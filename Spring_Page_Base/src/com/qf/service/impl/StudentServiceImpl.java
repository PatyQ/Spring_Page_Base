package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IStudentDao;
import com.qf.entity.Student;
import com.qf.service.IStudentService;

@Service
public class StudentServiceImpl implements IStudentService{

	@Autowired
	IStudentDao studentDao;
	
	@Override
	public PageInfo<Student> getPage(PageInfo<Student> page) {
		
		Page<Object> startPage = PageHelper.startPage(page.getPageNum(), page.getPageSize());
		System.err.println(startPage+"??????????????");
		
		List<Student> list = studentDao.getPage(page);
		
		return new PageInfo<>(list);
	}
	
}
