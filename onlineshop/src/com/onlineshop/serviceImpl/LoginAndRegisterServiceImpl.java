package com.onlineshop.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onlineshop.DAO.LoginAndRegisterDAO;
import com.onlineshop.DAO.UserDAO;
import com.onlineshop.domain.User;
import com.onlineshop.service.LoginAndRegisterService;

@Service
public class LoginAndRegisterServiceImpl implements LoginAndRegisterService {

	@Resource
	LoginAndRegisterDAO loginAndRegisterDAO;

	@Override
	public User Login(User user) {

		User daouser = loginAndRegisterDAO.getUser(user.getUsername());
		if (daouser != null) {
			if (daouser.equals(user)) {

				return daouser;
			}
		}
		return null;
	}

	@Override
	public Boolean Register(User user) {
		if(loginAndRegisterDAO.Isusernameoccupied(user.getUsername())){
			System.out.println("用户名被占用了");
			return false;			
		}		
		loginAndRegisterDAO.save(user);
		return true;
	}

	
}
