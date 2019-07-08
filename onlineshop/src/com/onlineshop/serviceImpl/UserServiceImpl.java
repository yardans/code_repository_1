package com.onlineshop.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onlineshop.DAO.LoginAndRegisterDAO;
import com.onlineshop.DAO.UserDAO;
import com.onlineshop.DAOImpl.UserDAOImpl;
import com.onlineshop.base.BaseDAO;
import com.onlineshop.domain.User;
import com.onlineshop.service.UserService;


@Service
public class UserServiceImpl implements UserService {
	@Resource
	UserDAO userDAO;
	@Resource
	LoginAndRegisterDAO loginAndRegisterDAO;
	
	public void edit(String username,String password,String email) {
		
		//1.从数据库当中获取当前ByUsername
//		  2.通过set方法给当前对象赋值
//		  3.执行UserDAO的update方法，在BaseDAO封装好的
		User user=loginAndRegisterDAO.getUser(username);
		user.setEmail(email);
		user.setPassword(password);
		user.setUsername(username);
		userDAO.update(user);
		}
	
}
