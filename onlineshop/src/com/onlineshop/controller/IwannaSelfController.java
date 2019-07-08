package com.onlineshop.controller;


import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.onlineshop.DAO.IwannaSelfDAO;
import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;
import com.onlineshop.service.IwannaBuyService;
import com.onlineshop.service.IwannaSelfService;

@Controller
@Scope("prototype")
public class IwannaSelfController {
	@Resource
	IwannaSelfService iwannaSelfservice;
	@Resource
	IwannaBuyService iwannaBuyService;
	@Resource
	IwannaSelfDAO iwannaSelfDAO;
	@RequestMapping(value="/iwannaself.do")
	public String tijiao( String sortname, String publishment, String bookname,
			 String price, String desc,HttpServletRequest request) throws IllegalStateException, IOException {
	         //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
	        CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
	                request.getSession().getServletContext());
	        //检查form中是否有enctype="multipart/form-data"
	        if(multipartResolver.isMultipart(request))
	        {
	            //将request变成多部分request
	            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
	           //获取multiRequest 中所有的文件名
	            Iterator iter=multiRequest.getFileNames();
	             
	            while(iter.hasNext())
	            {
	                //一次遍历所有文件
	                MultipartFile file=multiRequest.getFile(iter.next().toString());
	                if(file!=null)
	                {
	                    String path="F://apache-tomcat-9.0.1-windows-x64/apache-tomcat-9.0.1/webapps/onlineshop/books/"+file.getOriginalFilename();
	                    //上传
	                    file.transferTo(new File(path));
	                }
	                String pic=file.getOriginalFilename();
	                System.out.println(pic);
	                iwannaSelfservice.iwannaself(sortname, publishment, bookname, Double.parseDouble(price), desc,pic);
	            }
	           
	        }
		
		
		return "redirect:/iwannabuy.do";
	}
	@RequestMapping("/edit.do")
	String getSortsAndPublishments(HttpServletRequest request)
	{
	
		ServletContext application = request.getSession().getServletContext();
		application.setAttribute("sorts", iwannaBuyService.getSorts());
		application.setAttribute("publishments", iwannaBuyService.getPublishments());
		return "redirect:jsp/edit.jsp";
	}

}
