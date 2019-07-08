package org.happybuy.controller.front;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.happybuy.pojo.*;
import org.happybuy.service.CateService;
import org.happybuy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

	@Autowired
	private CateService cateService;

	@Autowired
	private GoodsService goodsService;

	@RequestMapping("/main")
	public String showAllGoods(Model model, HttpSession session) {

		Integer userid;
		User user = (User) session.getAttribute("user");
		if (user == null) {
			userid = null;
		} else {
			userid = user.getUserid();
		}

		List news= getNews(1);
		
		 if (null != news) {
		 model.addAttribute("news", news);
		 }

		// 最新商品
		model.addAttribute("goodsList", getGoodsList("upTime desc", 8));
		// 最热商品
		model.addAttribute("goodsList2", getGoodsList("num desc", 4));
		// 推荐商品
				model.addAttribute("goodsList3", getGoodsList("goodsId", 4));

		// //数码分类
		// List<Goods> digGoods = getCateGoods("数码", userid);
		// model.addAttribute("digGoods", digGoods);

		return "main";
	}

	@RequestMapping("/listgoods")
	@ResponseBody
	public Msg getAllGoods(@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		Integer userid;
		User user = (User) session.getAttribute("user");
		if (user == null) {
			userid = null;
		} else {
			userid = user.getUserid();
		}
		PageHelper.startPage(pn, 5);
		GoodsExample goodExample = new GoodsExample();
		org.happybuy.pojo.GoodsExample.Criteria criteria = goodExample.createCriteria();
		criteria.andCategoryNotIn(Arrays.asList(new Integer[] { 1, 2, 3 }));
		List<Goods> goodsList = goodsService.selectByExample(goodExample);
		// 获取每个商品的图片
		for (Goods goods : goodsList) {
			if (goods.getGoodsname().length() > 10) {
				goods.setGoodsname(goods.getGoodsname().substring(0, 9) + "...");
			}
			// 判断是否为登录状态
			if (userid == null) {
				goods.setFav(false);
			} else {
				Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(userid, goods.getGoodsid()));
				if (favorite == null) {
					goods.setFav(false);
				} else {
					goods.setFav(true);
				}
			}

			List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid());
			goods.setImagePaths(imagePathList);
		}

		// 显示几个页号
		PageInfo<Goods> page = new PageInfo<Goods>(goodsList, 5);
		return Msg.success("查询成功!").add("pageInfo", page);
	}

	public List<Goods> getCateGoods(String cate, Integer userid) {
		// 查询分类
		CategoryExample digCategoryExample = new CategoryExample();
		digCategoryExample.or().andCatenameLike(cate);
		List<Category> digCategoryList = cateService.selectByExample(digCategoryExample);

		if (digCategoryList.size() == 0) {
			return null;
		}

		// 查询属于刚查到的分类的商品
		GoodsExample digGoodsExample = new GoodsExample();
		List<Integer> digCateId = new ArrayList<Integer>();
		for (Category tmp : digCategoryList) {
			digCateId.add(tmp.getCateid());
		}
		digGoodsExample.or().andCategoryIn(digCateId);

		List<Goods> goodsList = goodsService.selectByExampleLimit(digGoodsExample);

		List<Goods> goodsAndImage = new ArrayList<>();
		// 获取每个商品的图片
		for (Goods goods : goodsList) {
			// 判断是否为登录状态

			if (userid == null) {
				goods.setFav(false);
			} else {
				Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(userid, goods.getGoodsid()));
				if (favorite == null) {
					goods.setFav(false);
				} else {
					goods.setFav(true);
				}
			}

			List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid());
			goods.setImagePaths(imagePathList);
			goodsAndImage.add(goods);
		}
		return goodsAndImage;
	}

	public List<Goods> getNews(int newsId) {
		GoodsExample goodExample = new GoodsExample();
		org.happybuy.pojo.GoodsExample.Criteria criteria = goodExample.createCriteria();
		criteria.andCategoryEqualTo(newsId);
		goodExample.setOrderByClause("upTime desc");

		List<Goods> goodsList = goodsService.selectByExample(goodExample);
		if (!goodsList.isEmpty()) {
			List<ImagePath> imagePathList = goodsService.findImagePath(goodsList.get(0).getGoodsid());
			goodsList.get(0).setImagePaths(imagePathList);
			if (goodsList.get(0).getDescription().length() > 55) {
				goodsList.get(0).setDescription(goodsList.get(0).getDescription().substring(0, 50) + "...");
			}
			return goodsList;

		}
		return null;
	}

	public List<Goods> getGoodsList(String order, int count) {
		PageHelper.startPage(1, count);
		GoodsExample goodExample = new GoodsExample();
		goodExample.or().andCategoryNotIn(Arrays.asList(new Integer[] { 1, 2, 3 }));
		goodExample.setOrderByClause(order);

		List<Goods> goodsList = goodsService.selectByExample(goodExample);
		for (Goods goods : goodsList) {
			if (goods.getGoodsname().length() > 20) {
				goods.setGoodsname(goods.getGoodsname().substring(0, 19) + "...");
			}

			List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid());
			goods.setImagePaths(imagePathList);
		}
		return goodsList;
	}
}
