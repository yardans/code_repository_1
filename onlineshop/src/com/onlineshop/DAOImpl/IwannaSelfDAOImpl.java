package com.onlineshop.DAOImpl;

import org.springframework.stereotype.Repository;
import com.onlineshop.DAO.IwannaSelfDAO;
import com.onlineshop.base.BaseDAOImpl;
import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;
@Repository
public class IwannaSelfDAOImpl extends BaseDAOImpl<Book> implements IwannaSelfDAO {

	@Override
	public Sort getBookSortBysortname(String sortname) {
	
		return 	(Sort) getSession().createQuery("from Sort where sortname = ?").setParameter(0, sortname).uniqueResult();
	}

	@Override
	public Publishment getPublishmentBypname(String pname) {
		
		return (Publishment) getSession().createQuery("from Publishment where pname = ?").setParameter(0, pname).uniqueResult();
	}


	

}
