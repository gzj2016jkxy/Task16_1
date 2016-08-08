/**
 * 
 */
package com.gzj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzj.model.Book;
import com.gzj.model.BookInfo;
import com.gzj.model.BookType;
import com.gzj.model.IdCard;
import com.gzj.model.Reader;
import com.gzj.model.ReaderInfo;
import com.gzj.service.BookInfoService;
import com.gzj.service.BookTypeService;
import com.gzj.service.IdCardService;
import com.gzj.service.ReaderInfoService;

/**
 * 基础数据维护
 *
 */
@Controller
@RequestMapping(value = "/gzj")
public class BasicController {
	
	@Autowired
	private BookTypeService bookTypeService = null; // 图书类别

	@Autowired
	private BookInfoService bookInfoService = null; // 图书信息

	@Autowired
	private ReaderInfoService readerInfoService = null; // 读者信息

	@Autowired
	private IdCardService idCardService = null; // 证件类型

	/**
	 * 获取图书类别
	 */
	@RequestMapping(value = "/getBookType")
	public String getBookType(ModelMap model) {
		List<BookType> bookTypes = bookTypeService.getAll();
		if (bookTypes != null) {
			model.addAttribute("bookTypes", bookTypes);
		}
		return "booktype";
	}

	/**
	 * 根据ID获取图书类别
	 */
	@RequestMapping(value = "/getOneBookType")
	public String getOneBookType(ModelMap model, int id) {
		BookType bookType = bookTypeService.getOneById(id);
		if (bookType != null) {
			model.addAttribute("bookType", bookType);
		}
		return "editbooktype";
	}

	/**
	 * 检查类型名称是否存在
	 */
	@RequestMapping(value = "/checkBookTypeExist")
	public void checkBookTypeExist(String typeName, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";

		if (bookTypeService.getByName(typeName) == null) {
			result = "{\"result\":\"success\"}"; // 不存在
		}

		response.setContentType("application/json");

		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 更新图书类别
	 */
	@RequestMapping(value = "/updateBookType")
	public String updateBookType(BookType bookType) {
		// System.out.println("更新");
		if (bookTypeService.update(bookType)) {
			return "redirect:/gzj/getBookType";
		} else {
			return "error";
		}
	}

	/**
	 * 跳转到添加图书类别页面
	 */
	@RequestMapping(value = "/toAddBookType")
	public String toAddBookType() {
		return "addbooktype";
	}

	/**
	 * 添加图书类别
	 */
	@RequestMapping(value = "/addBookType")
	public String addBookType(BookType bookType) {
		BookType bt = new BookType();
		bt.setTypeName(bookType.getTypeName());
		bookTypeService.addType(bt);
		return "redirect:/gzj/getBookType";
	}

	/**
	 * 获取图书
	 */
	@RequestMapping(value = "/getBook")
	public String getBook(ModelMap model) {
		List<BookInfo> bookInfos = bookInfoService.getAll();
		if (bookInfos != null) {
			model.addAttribute("bookInfos", bookInfos);
		}
		return "book";
	}

	/**
	 * 根据ID获取图书信息
	 */
	@RequestMapping(value = "/getOneBook")
	public String getOneBook(ModelMap model, int id) {
		BookInfo bookInfo = bookInfoService.getOneById(id);
		if (bookInfo != null) {
			model.addAttribute("bookInfo", bookInfo);
		}

		List<BookType> bookTypes = bookTypeService.getAll();
		if (bookTypes != null) {
			model.addAttribute("bookTypes", bookTypes);
		}
		return "editbook";
	}

	/**
	 * 检查ISBN是否存在
	 */
	@RequestMapping(value = "/checkIsbnExist")
	public void checkIsbnExist(String isbn, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";

		if (bookInfoService.getByIsbn(isbn) == null) {
			result = "{\"result\":\"success\"}"; // 不存在
		}

		response.setContentType("application/json");

		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 更新图书信息
	 */
	@RequestMapping(value = "/updateBook")
	public String updateBook(HttpServletRequest request) {

		int id = Integer.valueOf(request.getParameter("id"));
		String isbn = request.getParameter("isbn");
		String typeName = request.getParameter("typeName");
		int typeId = bookTypeService.getIdByName(typeName);
		String bookName = request.getParameter("bookName");
		String writer = request.getParameter("writer");
		String translater = request.getParameter("translater");
		String publisher = request.getParameter("publisher");
		String date = request.getParameter("date");
		float price = Float.valueOf(request.getParameter("price"));

		Book book = new Book();
		book.setId(id);
		book.setIsbn(isbn);
		book.setTypeId(typeId);
		book.setBookName(bookName);
		book.setWriter(writer);
		book.setTranslater(translater);
		book.setPublisher(publisher);
		book.setDate(date);
		book.setPrice(price);

		if (bookInfoService.update(book)) {
			return "redirect:/gzj/getBook";
		} else {
			return "error";
		}

	}

	/**
	 * 删除图书
	 */
	@RequestMapping(value = "/delBook")
	public void delBook(int id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";

		if (bookInfoService.delete(id)) {
			result = "{\"result\":\"success\"}";
		}

		response.setContentType("application/json");

		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 跳转到添加图书页面
	 */
	@RequestMapping(value = "/toAddBook")
	public String toAddBook(ModelMap model) {
		List<BookType> bookTypes = bookTypeService.getAll();
		if (bookTypes != null) {
			model.addAttribute("bookTypes", bookTypes);
		}
		return "addbook";
	}

	/**
	 * 添加图书
	 */
	@RequestMapping(value = "/addBook")
	public String addBook(HttpServletRequest request) {

		String isbn = request.getParameter("isbn");
		String typeName = request.getParameter("typeName");
		int typeId = bookTypeService.getIdByName(typeName);
		String bookName = request.getParameter("bookName");
		String writer = request.getParameter("writer");
		String translater = request.getParameter("translater");
		String publisher = request.getParameter("publisher");
		String date = request.getParameter("date");
		float price = Float.valueOf(request.getParameter("price"));

		Book book = new Book();
		book.setIsbn(isbn);
		book.setTypeId(typeId);
		book.setBookName(bookName);
		book.setWriter(writer);
		book.setTranslater(translater);
		book.setPublisher(publisher);
		book.setDate(date);
		book.setPrice(price);

		if (bookInfoService.save(book)) {
			return "redirect:/gzj/getBook";
		} else {
			return "error";
		}
	}

	/**
	 * 获取读者信息
	 */
	@RequestMapping(value = "/getReader")
	public String getReader(ModelMap model) {
		List<ReaderInfo> readerInfos = readerInfoService.getAll();
		if (readerInfos != null) {
			model.addAttribute("readerInfos", readerInfos);
		}
		return "reader";
	}

	/**
	 * 根据ID获取读者信息
	 */
	@RequestMapping(value = "/getOneReader")
	public String getOneReader(ModelMap model, int id) {
		ReaderInfo readerInfo = readerInfoService.getOneById(id);
		if (readerInfo != null) {
			model.addAttribute("readerInfo", readerInfo);
		}

		List<IdCard> cardTypes = idCardService.getAll();
		if (cardTypes != null) {
			model.addAttribute("cardTypes", cardTypes);
		}
		return "editreader";
	}

	/**
	 * 检查证件号码是否存在
	 */
	@RequestMapping(value = "/checkCardNoExist")
	public void checkCardNoExist(String idcardno, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";

		if (readerInfoService.getByNo(idcardno) == null) {
			result = "{\"result\":\"success\"}"; // 不存在
		}

		response.setContentType("application/json");

		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 更新读者信息
	 */
	@RequestMapping(value = "/updateReader")
	public String updateReader(HttpServletRequest request) {

		int id = Integer.valueOf(request.getParameter("id"));
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		int age = Integer.valueOf(request.getParameter("age"));
		String typeName = request.getParameter("typeName");
		int idCardType = idCardService.getIdByName(typeName);
		String idCardNo = request.getParameter("idCardNo");
		String date = request.getParameter("date");
		int maxNum = Integer.valueOf(request.getParameter("maxNum"));
		String tel = request.getParameter("tel");
		String money = request.getParameter("keepMoney");
		float keepMoney = money.equals("") ? 0 : Float.valueOf(money);
		String zy = request.getParameter("zy");

		Reader reader = new Reader();
		reader.setId(id);
		reader.setName(name);
		reader.setSex(sex);
		reader.setAge(age);
		reader.setIdCardType(idCardType);
		reader.setIdCardNo(idCardNo);
		reader.setDate(date);
		reader.setMaxNum(maxNum);
		reader.setTel(tel);
		reader.setKeepMoney(keepMoney);
		reader.setZy(zy);

		if (readerInfoService.update(reader)) {
			return "redirect:/gzj/getReader";
		} else {
			return "error";
		}

	}

	/**
	 * 删除读者信息
	 */
	@RequestMapping(value = "/delReader")
	public void delReader(int id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";

		if (readerInfoService.delete(id)) {
			result = "{\"result\":\"success\"}";
		}

		response.setContentType("application/json");

		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 跳转到添加读者页面
	 */
	@RequestMapping(value = "/toAddReader")
	public String toAddReader(ModelMap model) {
		List<IdCard> cardTypes = idCardService.getAll();
		if (cardTypes != null) {
			model.addAttribute("cardTypes", cardTypes);
		}
		return "addreader";
	}

	/**
	 * 添加读者
	 */
	@RequestMapping(value = "/addReader")
	public String addReader(HttpServletRequest request) {

		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		int age = Integer.valueOf(request.getParameter("age"));
		String typeName = request.getParameter("typeName");
		int idCardType = idCardService.getIdByName(typeName);
		String idCardNo = request.getParameter("idCardNo");
		String date = request.getParameter("date");
		int maxNum = Integer.valueOf(request.getParameter("maxNum"));
		String tel = request.getParameter("tel");
		String money = request.getParameter("keepMoney");
		float keepMoney = money.equals("") ? 0 : Float.valueOf(money);
		String zy = request.getParameter("zy");

		Reader reader = new Reader();
		reader.setName(name);
		reader.setSex(sex);
		reader.setAge(age);
		reader.setIdCardType(idCardType);
		reader.setIdCardNo(idCardNo);
		reader.setDate(date);
		reader.setMaxNum(maxNum);
		reader.setTel(tel);
		reader.setKeepMoney(keepMoney);
		reader.setZy(zy);

		if (readerInfoService.save(reader)) {
			return "redirect:/gzj/getReader";
		} else {
			return "error";
		}
	}

}
