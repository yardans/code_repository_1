package com.onlineshop.DAOImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.onlineshop.DAO.IwannaBuyDAO;
import com.onlineshop.base.BaseDAO;
import com.onlineshop.base.BaseDAOImpl;
import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;

@Repository
public class IwannaBuyDAOImpl extends BaseDAOImpl<Sort> implements IwannaBuyDAO {

	
	@Override
	public List<Sort> getSorts() {
		return getSession().createQuery("from Sort").list();
		
	}

	@Override
	public List<Publishment> getPublishments() {
	
		return getSession().createQuery("from Publishment").list();
	}

	@Override
	public List<Book> findBooks() {
		
		return getSession().createQuery("from Book").list();
	}

	@Override
	public Book findBookById(int id) {
		
		return (Book) getSession().createQuery("from Book where id = ?").setParameter(0, id);
	}
	
	

}
