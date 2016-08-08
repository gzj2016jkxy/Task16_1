/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * collection表：用来存放用户收集的诗集ID
 *
 */
public class Collection implements Serializable {

	private static final long serialVersionUID = 1L;

	private int collectionid;
	private int userid;
	private int id;

	public Collection() {
	}

	public int getCollectionid() {
		return collectionid;
	}

	public void setCollectionid(int collectionid) {
		this.collectionid = collectionid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
