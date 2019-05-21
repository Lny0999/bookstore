package edu.uc.service;

import java.util.List;

import edu.uc.bean.Book;

public interface BookService extends BaseService<Book> {
	List<Book> getBookByCategoryId(Long categoryId);
}
