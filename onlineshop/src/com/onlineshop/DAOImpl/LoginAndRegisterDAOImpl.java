package com.onlineshop.DAOImpl;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import com.onlineshop.DAO.LoginAndRegisterDAO;
import com.onlineshop.base.BaseDAOImpl;
import com.onlineshop.domain.User;

import antlr.collections.List;

@Repository
public class LoginAndRegisterDAOImpl extends BaseDAOImpl<User> implements LoginAndRegisterDAO{

	@Override
	public User getUser(String username) {
	
			Query query = getSession().createQuery("from User user where user.username = ?").setParameter(0, username);
			User user = (User) query.uniqueResult();
			if(user!=null) {
			return user;
			}
			return null;
		
	}

	@Override
	public Boolean Isusernameoccupied(String username) {
		Query query=getSession().createQuery("from User user where user.username = ?").setParameter(0, username);
		User user=(User) query.uniqueResult();
		if(user!=null)
		{
			return true;
		}
		return false;
	}

	@Override
	public int getMaxId() {
		
		return (int) getSession().createSQLQuery("select max(id) from user").uniqueResult();
	}


}
