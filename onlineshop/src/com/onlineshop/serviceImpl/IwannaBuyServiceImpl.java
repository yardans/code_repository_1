package com.onlineshop.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onlineshop.DAO.IwannaBuyDAO;
import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;
import com.onlineshop.service.IwannaBuyService;

@Service
public class IwannaBuyServiceImpl implements IwannaBuyService {

	@Resource
	IwannaBuyDAO iwannaBuyDAO;
	
	@Override
	public List<Sort> getSorts() {
		return iwannaBuyDAO.getSorts();
	}

	@Override
	public List<Publishment> getPublishments() {
		
		return iwannaBuyDAO.getPublishments();
	}

	@Override
	public List<Book> getBooks() {
		
		return iwannaBuyDAO.findBooks();
	}

	@Override
	public Book findBookById(int id) {
		
		return iwannaBuyDAO.findBookById(id);
	}

}
