/**
 * 
 */
package com.gzj.model;

import java.io.Serializable;

/**
 * 证件类型
 *
 */
public class IdCard implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;// 自动编号
	private String typeName;// 证件类型

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
