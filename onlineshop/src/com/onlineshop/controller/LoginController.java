package com.onlineshop.controller;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import com.onlineshop.DAO.LoginAndRegisterDAO;
import com.onlineshop.domain.Sort;
import com.onlineshop.domain.User;
import com.onlineshop.service.IwannaBuyService;
import com.onlineshop.service.LoginAndRegisterService;

@Controller
@Scope("prototype")
public class LoginController {

	@Resource
	LoginAndRegisterService loginService;
	@Resource
	LoginAndRegisterDAO loginDAO;
	@Resource
	IwannaBuyService iwannaBuyService;

	/**
	 * 未登录用户登录方法
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login.do")
	public String adminLogin(User user, HttpSession session, @RequestParam String verification,
			HttpServletRequest req) {
		User daouser = loginService.Login(user);
		// 获取存放在session中的验证码
		String code = (String) session.getAttribute("code");
		// 获取页面提交的验证码
		if (code.toLowerCase().equals(verification.toLowerCase())) { // 验证码不区分大小写
			// 验证成功，跳转到成功页面
			if (daouser != null) {
				session.setAttribute("currentUser", daouser);
				return "redirect:jsp/index.jsp";

			} else { // 验证失败
				session.setAttribute("message", "用户名或密码错误！");
				return "redirect:jsp/join.jsp";
			}
		} else { // 验证失败
			return "redirect:jsp/join.jsp";
		}

	}

	@RequestMapping("/register.do")
	public String register(HttpSession session, @RequestParam String username, @RequestParam String password,
			@RequestParam String password_confirm, @RequestParam String verification) {
		User user = new User(username, password);
		// 获取存放在session中的验证码
		String code = (String) session.getAttribute("code");
		// 获取页面提交的验证码
		if (code.toLowerCase().equals(verification.toLowerCase())) { // 验证码不区分大小写
			// 验证成功，跳转到成功页面

			if (!password.equals(password_confirm)) {
				return "redirect:jsp/join.jsp";
			}
			if (loginService.Register(user) == false) {
				return "redirect:jsp/join.jsp";
			}
			session.setAttribute("currentUser", loginDAO.getUser(username));
			return "redirect:jsp/index.jsp";
		} else { // 验证失败
			return "redirect:jsp/join.jsp";
		}

	}
	@RequestMapping("/yesorno.do")
	public String yesorno(HttpSession session) {
		session.getAttribute("currentUser");
		return "redirect:jsp/member.jsp";
		
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("currentUser");
		return "redirect:jsp/index.jsp";
	}

	/*
	 * @RequestMapping("/iwannabuy.do") public String iwannabuy(HttpSession session)
	 * { session.setAttribute("sorts", iwannaBuyService.getSorts()); return
	 * "redirect:jsp/list.jsp"; }
	 */

	@RequestMapping("/iwannabuy.do")
	public String iwannabuy1(HttpServletRequest request) {
		ServletContext application = request.getSession().getServletContext();
		application.setAttribute("sorts", iwannaBuyService.getSorts());
		application.setAttribute("publishments", iwannaBuyService.getPublishments());
		application.setAttribute("books", iwannaBuyService.getBooks());
		return "redirect:jsp/list.jsp";
	}

	@RequestMapping("/makecode.do")
	@ResponseBody
	public void makecode(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.getSession().removeAttribute("code");
		int IMG_HEIGHT = 100;
		// 图片宽度
		int IMG_WIDTH = 30;
		// 验证码长度
		int CODE_LEN = 4;
		// 用于绘制图片，设置图片的长宽和图片类型（RGB)
		BufferedImage bi = new BufferedImage(IMG_HEIGHT, IMG_WIDTH, BufferedImage.TYPE_INT_RGB);
		// 获取绘图工具
		Graphics graphics = bi.getGraphics();
		graphics.setColor(new Color(100, 230, 200)); // 使用RGB设置背景颜色
		graphics.fillRect(0, 0, 100, 30); // 填充矩形区域

		// 验证码中所使用到的字符
		char[] codeChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456".toCharArray();
		String captcha = ""; // 存放生成的验证码
		Random random = new Random();
		for (int i = 0; i < CODE_LEN; i++) { // 循环将每个验证码字符绘制到图片上
			int index = random.nextInt(codeChar.length);
			// 随机生成验证码颜色
			graphics.setColor(new Color(random.nextInt(150), random.nextInt(200), random.nextInt(255)));
			// 将一个字符绘制到图片上，并制定位置（设置x,y坐标）
			graphics.drawString(codeChar[index] + "", (i * 20) + 15, 20);
			captcha += codeChar[index];
		}
		// 将生成的验证码code放入sessoin中
		req.getSession().setAttribute("code", captcha);
		// 通过ImageIO将图片输出
		ImageIO.write(bi, "JPG", resp.getOutputStream());
	}
}
