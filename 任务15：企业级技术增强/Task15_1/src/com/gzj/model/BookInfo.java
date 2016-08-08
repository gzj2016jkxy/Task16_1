/**
 * 
 */
package com.gzj.model;

import java.io.Serializable;

/**
 * 图书信息
 *
 */
public class BookInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;// 自动编号
	private String isbn;// 国际标准书号
	private BookType bookType;// 图书类型
	private String bookName;// 书名
	private String writer;// 作者
	private String translater;// 译者
	private String publisher;// 出版社
	private String date;// 出版日期
	private float price;// 价格

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public BookType getBookType() {
		return bookType;
	}

	public void setBookType(BookType bookType) {
		this.bookType = bookType;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTranslater() {
		return translater;
	}

	public void setTranslater(String translater) {
		this.translater = translater;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
