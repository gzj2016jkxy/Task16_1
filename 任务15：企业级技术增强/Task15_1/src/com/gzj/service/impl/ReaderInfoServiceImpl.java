/**
 * 
 */
package com.gzj.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzj.mapper.ReaderInfoMapper;
import com.gzj.model.Reader;
import com.gzj.model.ReaderInfo;
import com.gzj.service.ReaderInfoService;

/**
 * 实现读者信息
 *
 */
@Service
@Transactional // 此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class ReaderInfoServiceImpl implements ReaderInfoService {

	@Resource
	private ReaderInfoMapper readerInfoMapper;

	@Override
	public List<ReaderInfo> getAll() {
		return readerInfoMapper.getAll();
	}

	@Override
	public ReaderInfo getOneById(int id) {
		return readerInfoMapper.getOneById(id);
	}

	@Override
	public ReaderInfo getByNo(String idCardNo) {
		return readerInfoMapper.getByNo(idCardNo);
	}

	@Override
	public boolean update(Reader reader) {
		return readerInfoMapper.update(reader);
	}

	@Override
	public boolean delete(int id) {
		return readerInfoMapper.delete(id);
	}

	@Override
	public boolean save(Reader reader) {
		return readerInfoMapper.save(reader);
	}
		
}
