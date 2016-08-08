/**
 * 
 */
package com.gzj.model;

import java.io.Serializable;

/**
 * 图书类别
 *
 */
public class BookType implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;// 自动编号
	private String typeName;// 图书类型

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

}
