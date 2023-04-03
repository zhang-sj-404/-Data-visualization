package com.czu.zsj.controller;


import com.czu.zsj.pojo.NewStudent;
import com.czu.zsj.pojo.sorceResult;
import com.czu.zsj.service.NewStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("new")
public class EchartsController {
	@Autowired
	private NewStudentService newStudentService;

	//首页柱状图
	@RequestMapping(value = "/myeCharts",method = RequestMethod.POST)
	@ResponseBody
	public List<NewStudent> page() {
		//list获取sql数据
		List<NewStudent> newStudents = newStudentService.getAllStudent();
		System.out.println("hello页面请求数据:" + newStudents.size());
		System.out.println("柱状图请求数据:" +newStudents.toString());
		return newStudents;
	}

	@RequestMapping("getScore")
	@ResponseBody
	public List<Integer> getScore() {
		List<NewStudent> newStudents = newStudentService.getAllStudent();
		List<Integer> scores = null;
		for (NewStudent newStudent : newStudents) {
			scores.add(newStudent.getScore());
		}
		System.out.println("饼图请求数据:" +scores.toString());
		return scores;
	}

//	@RequestMapping("myeCharts")
//	public String myeCharts() {
//		return "Hello";
//	}

//	@RequestMapping("getPieCharts")
//	public String getPieCharts() {
//		return "PieCharts";
//	}

	
	@RequestMapping("getData")
	@ResponseBody
	public List<sorceResult> getData() {
		List<NewStudent> students = newStudentService.getAllStudent();
		List<sorceResult> results = new ArrayList<sorceResult>();
		for (NewStudent newStudent : students) {
			// 把学生的成绩和姓名封装到一个result
			sorceResult result = new sorceResult(newStudent.getScore(), newStudent.getName());
			results.add(result);
		}
		System.out.println("json数据:"+results);
		return results;
	}
}
