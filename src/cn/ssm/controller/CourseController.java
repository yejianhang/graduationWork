package cn.ssm.controller;


import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ssm.service.CourseAssessService;
import cn.ssm.service.CourseService;
import cn.ssm.service.UserBookCourseService;
import cn.ssm.service.courseAndcoachService;
import cn.ssm.service.techService;
import cn.ssm.vo.tech;

@Controller
public class CourseController {
	@Autowired
	private CourseService courseservice;
	public void setCourseService(CourseService courseservice) {
		this.courseservice=courseservice;
	}
	@Autowired
	private UserBookCourseService ubcservice;
	public void setUserBookCourseService(UserBookCourseService ubcservice) {
		this.ubcservice=ubcservice;
	}
	
	@Autowired
	private techService techService;
	public void settechService(techService techService) {
		this.techService=techService;
	}
	
	@Autowired
	private CourseAssessService cas;
	public void setCourseAssessService(CourseAssessService cas) {
		this.cas=cas;
	}
	@Autowired
	private courseAndcoachService courseAndcoachService;
	public void setCourseAndcoachService(courseAndcoachService courseAndcoachService) {
		this.courseAndcoachService=courseAndcoachService;
	}
	
	@RequestMapping("/CourseDetail")
	public String ShowCourseDetail(Model model,int tech_id) throws ParseException {
		model.addAttribute("assess", cas.listByCourseID(techService.ShowCourseIDByTechID(tech_id)));
		model.addAttribute("tech_people",ubcservice.findUserByTechId(tech_id));
		model.addAttribute("techOne",techService.ShowTechByID(tech_id));
		model.addAttribute("coureHis", techService.ShowCourseHis(techService.ShowTechByID(tech_id).getCourse_id()));
		return "UserShowCourseDetail";
	}
	
	@RequestMapping("/listCourse")
	//modelmap
	public String list(ModelMap map) throws ParseException {
		map.addAttribute("list",techService.ListAlltech());
		return "UserShowCourse";
	}
	
	
	@RequestMapping("/FindCourseTextById")
	//modelmap
	public void FindCourseById(int course_id,HttpServletResponse rep) throws IOException {
		rep.setContentType("text/plain;charset=UTF-8");
		String course_text=courseservice.FindCourseById(course_id);
		rep.getWriter().println(course_text);
		
	}
	//根据课程名进行搜索 为空则查询全部。
	@RequestMapping("/SearchCourseByName")
	public String SearchCourseByName(String course_name,Model model) throws ParseException {
		if(course_name.equals("")) {
			model.addAttribute("list",techService.ListAlltech());
			return "UserShowCourse";
		}
		else {
			List<tech> tclll=techService.ShowTechByName(course_name);
			model.addAttribute("list",techService.ShowTechByName(course_name));
			return "UserShowCourse";
		}
	}
	
	
}
