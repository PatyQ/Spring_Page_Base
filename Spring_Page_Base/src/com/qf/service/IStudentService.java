package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.Student;

public interface IStudentService {

	PageInfo<Student> getPage(PageInfo<Student> page);

}
