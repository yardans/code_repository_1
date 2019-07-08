package com.onlineshop.DAO;

import java.util.List;

import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;

public interface IwannaBuyDAO {
	public List<Sort> getSorts();
	public List<Publishment> getPublishments();
	public List<Book> findBooks();
	public Book findBookById(int id);
	
}
