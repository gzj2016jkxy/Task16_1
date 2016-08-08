/**
 * 
 */
package com.gzj.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzj.mapper.IdCardMapper;
import com.gzj.model.IdCard;
import com.gzj.service.IdCardService;

/**
 * 实现证件类型
 *
 */
@Service
@Transactional // 此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class IdCardServiceImpl implements IdCardService {

	@Resource
	private IdCardMapper idCardMapper;

	@Override
	public List<IdCard> getAll() {
		return idCardMapper.getAll();
	}

	@Override
	public int getIdByName(String typeName) {
		return idCardMapper.getIdByName(typeName);
	}
	
}
