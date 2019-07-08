package com.onlineshop.service;

import java.util.List;

import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;

public interface IwannaBuyService {
	public List<Sort> getSorts();
	public List<Publishment> getPublishments();
	public List<Book> getBooks();
	public Book findBookById(int id);
}
