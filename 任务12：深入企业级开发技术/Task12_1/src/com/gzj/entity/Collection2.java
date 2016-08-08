/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * collection表：用来存放用户收集的诗集ID
 *
 */
public class Collection2 implements Serializable {

	private static final long serialVersionUID = 1L;

	private int collectionid;
	private Users users;
	private Poetries poetries;

	public Collection2() {
	}

	public int getCollectionid() {
		return collectionid;
	}

	public void setCollectionid(int collectionid) {
		this.collectionid = collectionid;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Poetries getPoetries() {
		return poetries;
	}

	public void setPoetries(Poetries poetries) {
		this.poetries = poetries;
	}

}
