package com.qf.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.qf.entity.Student;

public interface IStudentDao {

	List<Student> getPage(PageInfo<Student> page);
	
}
