/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 诗集类
 *
 */
public class Poetries implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;
	private int poet_id;
	private String content;
	private String title;
	private String created_at;
	private String updated_at;

	public Poetries() {

	}
	
	public Poetries(String title) {
		this.title = title;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPoet_id() {
		return poet_id;
	}

	public void setPoet_id(int poet_id) {
		this.poet_id = poet_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
