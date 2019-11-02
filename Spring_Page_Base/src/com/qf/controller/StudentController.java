package com.qf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageInfo;
import com.qf.entity.Student;
import com.qf.service.IStudentService;

@Controller
@RequestMapping(value="student")
public class StudentController {

	@Autowired
	IStudentService studentService;
	
	@RequestMapping(value="getPage")
	public String getPage(ModelMap map,PageInfo<Student> page){
		
		if (page.getPageNum()==0) {
			page.setPageNum(1);
			page.setPageSize(3);
		}
		
		PageInfo<Student> list = studentService.getPage(page);
		map.put("page", list);
		map.put("url", "student/getPage");
		System.out.println(list);
		return "stulist";
	}
	
	
}
