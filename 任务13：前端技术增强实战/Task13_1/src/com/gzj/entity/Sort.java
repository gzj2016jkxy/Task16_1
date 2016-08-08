/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 种类表sort
 *
 */
public class Sort implements Serializable {

	private static final long serialVersionUID = 1L;

	private int sortId;
	private String sortName;

	public int getSortId() {
		return sortId;
	}

	public void setSortId(int sortId) {
		this.sortId = sortId;
	}

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

}
