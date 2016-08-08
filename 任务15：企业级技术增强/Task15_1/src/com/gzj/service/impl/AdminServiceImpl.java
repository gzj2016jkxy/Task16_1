/**
 * 
 */
package com.gzj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzj.mapper.AdminMapper;
import com.gzj.model.Admin;
import com.gzj.service.AdminService;

/**
 * 实现管理员信息
 *
 */
@Service
@Transactional // 此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class AdminServiceImpl implements AdminService {

	@Resource
	private AdminMapper adminMapper;

	@Override
	public Admin checkLogin(Admin admin) {
		return adminMapper.checkLogin(admin);
	}

	@Override
	public boolean updatePwd(int id, String passWord) {
		return adminMapper.updatePwd(id, passWord);
	}

	@Override
	public Admin getByName(String userName) {
		return adminMapper.getByName(userName);
	}

	@Override
	public boolean save(Admin admin) {
		return adminMapper.save(admin);
	}

}
