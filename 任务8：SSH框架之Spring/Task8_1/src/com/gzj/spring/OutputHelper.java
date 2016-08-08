/**
 * 
 */
package com.gzj.spring;

import java.util.List;

/**
 * 输出员工信息
 *
 */
public class OutputHelper {
	private IOutputHelper helper;
	private List<employee> list;

	public List<employee> getList() {
		return list;
	}

	public void setList(List<employee> list) {
		this.list = list;
	}

	public IOutputHelper getHelper() {
		return helper;
	}

	public void setHelper(IOutputHelper helper) {
		this.helper = helper;
	}
	
	public void outPut(){
		helper.outPut(list);
	}
}
