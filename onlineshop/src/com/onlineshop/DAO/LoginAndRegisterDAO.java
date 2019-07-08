package com.onlineshop.DAO;

import com.onlineshop.base.BaseDAO;
import com.onlineshop.domain.User;

public interface LoginAndRegisterDAO extends BaseDAO<User>{
	public User getUser(String username);
	public Boolean Isusernameoccupied(String username);
	public int getMaxId();
}
