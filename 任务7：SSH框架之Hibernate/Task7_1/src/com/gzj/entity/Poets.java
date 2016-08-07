package com.gzj.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * 
 * 诗人类
 *
 */
public class Poets implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;
	private String name;
	private String created_at;
	private String updated_at;
	
	//对多端对象集合的引用
	private Set<Poetries> setPoetries;
		
	public Poets() {

	}

	public Set<Poetries> getSetPoetries() {
		return setPoetries;
	}

	public void setSetPoetries(Set<Poetries> setPoetries) {
		this.setPoetries = setPoetries;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}

}
