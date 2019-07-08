package com.onlineshop.DAO;

import com.onlineshop.base.BaseDAO;
import com.onlineshop.domain.Book;
import com.onlineshop.domain.Publishment;
import com.onlineshop.domain.Sort;

public interface IwannaSelfDAO extends BaseDAO<Book> {
	Sort getBookSortBysortname(String sortname);
	Publishment getPublishmentBypname(String pname);

}
