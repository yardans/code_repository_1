package com.onlineshop.DAOImpl;


import org.springframework.stereotype.Repository;

import com.onlineshop.DAO.UserDAO;
import com.onlineshop.base.BaseDAOImpl;
import com.onlineshop.domain.User;
@Repository
public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO{



}
