package com.onlineshop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onlineshop.DAO.LoginAndRegisterDAO;
import com.onlineshop.domain.User;
import com.onlineshop.service.UserService;
import com.onlineshop.serviceImpl.UserServiceImpl;

@Controller
@Scope("prototype")
public class UserController {

	@Resource
	UserServiceImpl userservice;
	@Resource
	LoginAndRegisterDAO loginDAO;
	
	@RequestMapping(value="/userpersonalinfo.do")
	public String edit(@RequestParam String username,@RequestParam String password,@RequestParam String email,HttpSession session) {
		userservice.edit(username, password, email);
		session.removeAttribute("currentUser");
		session.setAttribute("currentUser",  loginDAO.getUser(username));
		return "redirect:jsp/member.jsp";
		
		
		
	}
}