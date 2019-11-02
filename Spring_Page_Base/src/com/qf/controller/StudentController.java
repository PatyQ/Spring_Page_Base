package com.qf.controller;

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
