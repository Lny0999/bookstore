package edu.uc.dao;

import java.util.List;

import edu.uc.bean.Book;

public interface BookDao extends BaseDao<Book> {
	List<Book> getBookByCategoryId(Long categoryId);
}
