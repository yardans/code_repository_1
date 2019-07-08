package com.onlineshop.service;

import com.onlineshop.domain.User;

public interface LoginAndRegisterService {
	public User Login(User user);
	public Boolean Register(User user);
}
