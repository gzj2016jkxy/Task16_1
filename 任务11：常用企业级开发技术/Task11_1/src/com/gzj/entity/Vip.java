/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * vip表：用来存放VIP用户的详细信息
 *
 */
public class Vip implements Serializable {

	private static final long serialVersionUID = 1L;

	private int vipId;
	private Date joinTime;
	private String name;
	private int age;
	private String profession;
	
	public Vip() {
	}

	public int getVipId() {
		return vipId;
	}

	public void setVipId(int vipId) {
		this.vipId = vipId;
	}

	public Date getJoinTime() {
		return joinTime;
	}

	public void setJoinTime(Date joinTime) {
		this.joinTime = joinTime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

}
