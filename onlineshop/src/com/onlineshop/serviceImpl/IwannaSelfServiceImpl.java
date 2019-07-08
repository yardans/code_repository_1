package com.onlineshop.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onlineshop.DAO.IwannaSelfDAO;
import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;
import com.onlineshop.service.IwannaSelfService;
@Service
class IwannaSelfServiceImpl implements IwannaSelfService {
		@Resource
		IwannaSelfDAO iwannaSelfDAO;
	public void iwannaself(String sortname,String publishment,String bookname,Double price,String description,String pic) {
		Book book = new Book();
		book.setSort(iwannaSelfDAO.getBookSortBysortname(sortname));
		book.setPublishment(iwannaSelfDAO.getPublishmentBypname(publishment));
		book.setPrice(price);
		book.setBookname(bookname);
		book.setDescription(description);
		book.setPic(pic);
		System.out.println(book.toString());
		iwannaSelfDAO.save(book);
	}
}
