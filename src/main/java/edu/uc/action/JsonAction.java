package edu.uc.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.liuvei.common.SysFun;
import com.opensymphony.xwork2.ActionSupport;

import edu.uc.bean.Book;
import edu.uc.bean.BookCategory;
import edu.uc.bean.Customer;
import edu.uc.bean.HeadLine;
import edu.uc.service.BookCategoryService;
import edu.uc.service.BookService;
import edu.uc.service.CustomerService;
import edu.uc.service.HeadLineService;
import edu.uc.util.MD5util;

@Component("JsonAction")
@Scope("prototype")
public class JsonAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5967103792551330406L;
	@Autowired
	private BookCategoryService bookCategoryService;
	@Autowired
	private BookService bookService;
	@Autowired
	private HeadLineService headLineService;
	@Autowired
	private CustomerService customerService;
	private InputStream rspStream;
	private String id;
	private String categoryId;
	

	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public InputStream getRspStream() {
		return rspStream;
	}
	public void setRspStream(InputStream rspStream) {
		this.rspStream = rspStream;
	}
	public InputStream toStream(String pStr)
	{
		if(pStr==null)
		{
			pStr="";
		}
		byte[] arr = null;
		try
		{
			arr = pStr.getBytes("UTF-8");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return new ByteArrayInputStream(arr);	
	}
	public String getCategoryNameList()
	{
		String strResult="";
		List<BookCategory> bookCategoryList = bookCategoryService.list();
		List<BookCategory> newBookCategoryList = new ArrayList<BookCategory>();
		for(int i =0;i<bookCategoryList.size();i++)
		{
			//System.out.println(bookCategoryList.get(i).getCategoryParentId());
			if(bookCategoryList.get(i).getCategoryParentId()==null)
			{
				newBookCategoryList.add(bookCategoryList.get(i));
			}
		}
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("code", 1L);
		map.put("desc", "ok");
		map.put("data",newBookCategoryList);
		try
		{
			strResult = mapper.writeValueAsString(map);
			System.out.println(strResult);		
		}
		catch(Exception e)
		{
			map.put("code", -1L);
			map.put("desc", "no");
			map.put("data",e.getMessage());
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
	
	public String getCategoryNameListToBook()
	{
		String strResult="";
		List<BookCategory> bookCategoryList = bookCategoryService.list();
		List<BookCategory> newBookCategoryList = new ArrayList<BookCategory>();
		for(int i =0;i<bookCategoryList.size();i++)
		{
			//System.out.println(bookCategoryList.get(i).getCategoryParentId());
			if(bookCategoryList.get(i).getCategoryParentId()!=null)
			{
				newBookCategoryList.add(bookCategoryList.get(i));
			}
		}
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("code", 1L);
		map.put("desc", "ok");
		map.put("data",newBookCategoryList);
		try
		{
			strResult = mapper.writeValueAsString(map);
			System.out.println(strResult);		
		}
		catch(Exception e)
		{
			map.put("code", -1L);
			map.put("desc", "no");
			map.put("data",e.getMessage());
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
	public String updateEnableStatus()
	{
		String strResult="";
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		if(!SysFun.isNullOrEmpty(id))
		{
			Long vId = SysFun.parseLong(id.substring(0,id.length()-2));
			String statusId = id.substring(id.length()-1,id.length());
			
			Book book = bookService.load(vId);
			if(statusId.equals("a"))
			{
				book.setEnableStatus(2);
			}
			else if(statusId.equals("c"))
			{
				book.setEnableStatus(1);
				System.out.println(book.getEnableStatus());
			}
			else
			{
				book.setEnableStatus(2);
			}
			
			vId = bookService.update(book);
			
			book = bookService.load(vId);
			System.out.println(book.getEnableStatus());
			//System.out.println();
			map.put("success", true);
			map.put("status", book.getEnableStatus());
			//map.put("status", book.getEnableStatus());
			try {
				strResult = mapper.writeValueAsString(map);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				map.put("success", false);
				map.put("msg", e.getMessage());
			}
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
	public String updateUserPassword()
	{
		String strResult="";
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		if(!SysFun.isNullOrEmpty(id))
		{
			Long vId = SysFun.parseLong(id);
			Customer bean = customerService.load(vId);
			bean.setUserPass(MD5util.getMD5BySalt(bean.getUserId(), "123456"));
			customerService.update(bean);
			map.put("success", true);
			map.put("bean", bean);
			//map.put("status", book.getEnableStatus());
			try {
				strResult = mapper.writeValueAsString(map);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				map.put("success", false);
				map.put("msg", e.getMessage());
			}
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
	public String getHeadLineImg()
	{
		String strResult="";
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		List<HeadLine> beanList = headLineService.list();
		List<String> imgList = new ArrayList<String>();
		for(HeadLine bean : beanList)
		{
			imgList.add(bean.getLineImg());
		}
		map.put("success", true);
		map.put("imgList", imgList);
			//map.put("status", book.getEnableStatus());
		try {
			strResult = mapper.writeValueAsString(map);
		} catch (Exception e) {
				// TODO Auto-generated catch block
			map.put("success", false);
			map.put("msg", e.getMessage());
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
	public String getBookCategory()
	{
		String strResult="";
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		List<BookCategory> beanList = bookCategoryService.list();
		List<String> bookCategoryId = new ArrayList<String>();
		List<String> bookCategoryNameList = new ArrayList<String>();
		Map<String,Object> mapModel = new HashMap<String,Object>();
		for(BookCategory bc:beanList)
		{
			System.out.println(bc.getCategoryParentId());
			System.out.println(bc.getCategoryId());
			if(bc.getCategoryParentId()==null)
			{
				bookCategoryId.add(bc.getCategoryId().toString());
				bookCategoryNameList.add(bc.getCategoryName());
			}
		}
		for(String s:bookCategoryId)
		{
			List<BookCategory> bc2 = bookCategoryService.getParentIdList(Long.valueOf(s));
			mapModel.put(s, bc2);
		}
		map.put("bookCategoryId", bookCategoryId);
		map.put("child", mapModel);
		map.put("bookCategoryNameList", bookCategoryNameList);
			//map.put("status", book.getEnableStatus());
		try {
			strResult = mapper.writeValueAsString(map);
		} catch (Exception e) {
				// TODO Auto-generated catch block
			map.put("success", false);
			map.put("msg", e.getMessage());
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
	public String getBookList()
	{
		String strResult="";
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		List<Book> beanList = bookService.list();
		List<Book> newBookList = new ArrayList<Book>();
		for(Book book:beanList)
		{
			if(book.getBookCategory()!=null&&book.getEnableStatus()==2)
			{
				newBookList.add(book);
				if(newBookList.size()==8)
				{
					break;
				}
			}
		}
		map.put("bookList", newBookList);
		//map.put("status", book.getEnableStatus());
		try {
			strResult = mapper.writeValueAsString(map);
		} catch (Exception e) {
				// TODO Auto-generated catch block
			map.put("success", false);
			map.put("msg", e.getMessage());
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
	public String getBookListByCategoryId()
	{
		String strResult="";
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		List<Book> beanList = bookService.getBookByCategoryId(Long.valueOf(categoryId));
		System.out.println(categoryId);
		BookCategory bc = bookCategoryService.load(Long.valueOf(categoryId));
		List<Book> newBeanList = new ArrayList<Book>();
		for(Book bean : beanList)
		{
			if(bean.getEnableStatus()==2)
			{
				newBeanList.add(bean);
			}
		}
		//System.out.println(newBeanList.toString());
		map.put("bookList", newBeanList);
		map.put("bookSize", newBeanList.size());
		map.put("bookCategoryName",bc.getCategoryName());
		//map.put("status", book.getEnableStatus());
		try {
			strResult = mapper.writeValueAsString(map);
		} catch (Exception e) {
				// TODO Auto-generated catch block
			map.put("success", false);
			map.put("msg", e.getMessage());
		}
		rspStream = toStream(strResult);
		return SUCCESS;
	}
}
