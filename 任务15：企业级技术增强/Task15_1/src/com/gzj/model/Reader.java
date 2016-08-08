/**
 * 
 */
package com.gzj.model;

import java.io.Serializable;

/**
 * 读者信息
 *
 */
public class Reader implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;// 自动编号
	private String name;// 姓名
	private String sex;// 性别
	private int age;// 年龄
	private int idCardType;// 证件类型
	private String idCardNo;// 证件号码
	private String date;// 办证日期
	private int maxNum;// 最大可借书量
	private String tel;// 电话号码
	private float keepMoney;// 押金
	private String zy;// 职业

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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getIdCardType() {
		return idCardType;
	}

	public void setIdCardType(int idCardType) {
		this.idCardType = idCardType;
	}

	public String getIdCardNo() {
		return idCardNo;
	}

	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(int maxNum) {
		this.maxNum = maxNum;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public float getKeepMoney() {
		return keepMoney;
	}

	public void setKeepMoney(float keepMoney) {
		this.keepMoney = keepMoney;
	}

	public String getZy() {
		return zy;
	}

	public void setZy(String zy) {
		this.zy = zy;
	}

}
