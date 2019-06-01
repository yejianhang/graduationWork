package cn.ssm.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ssm.service.CoachService;
import cn.ssm.service.CourseService;
import cn.ssm.service.UserService;
import cn.ssm.service.palaceService;
import cn.ssm.service.payedOrderService;
import cn.ssm.service.techService;
import cn.ssm.service.impl.CoachServiceImpl;
import cn.ssm.service.impl.adminServiceImpl;
import cn.ssm.vo.User;
import cn.ssm.vo.coach;
import cn.ssm.vo.payedOrder;
import cn.ssm.vo.tech;

@Controller
public class AdminController {
	@Autowired
	private adminServiceImpl adminServiceImpl;
	public void setAdminServiceImpl(adminServiceImpl adminServiceImpl) {
		this.adminServiceImpl = adminServiceImpl;
	}
	
	@Autowired
	private CoachService coachService;
	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}
	
	@Autowired
	private CourseService courseService;
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}
	@Autowired
	private payedOrderService poService;
	public void setUserService(payedOrderService poService) {
		this.poService = poService;
	}
	@Autowired
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@Autowired
	private techService techService;
	public void settechService(techService techService) {
		this.techService=techService;
	}
	@Autowired
	private palaceService palaceService;
	public void setpalaceService(palaceService palaceService) {
		this.palaceService=palaceService;
	}
	@Autowired
	private payedOrderService payedOrderService;
	public void setpayedOrderService(payedOrderService payedOrderService) {
		this.payedOrderService=payedOrderService;
	}
	
	
	@RequestMapping("/adiminLogin")
	public String adminLogin(String admin_id,String admin_passwd,Model model,HttpSession session) {
		SimpleDateFormat fm=new SimpleDateFormat("yyyy-MM-dd");
		Boolean  log=adminServiceImpl.adminLogin(admin_id, admin_passwd);
		if(log==true) {
			model.addAttribute("OrderMonth", payedOrderService.findOrderByMonth());
			session.setAttribute("date",fm.format(new Date()));
			session.setAttribute("CountOrderByMonth",payedOrderService.CountOrderByMonth());
			session.setAttribute("monthLength",new Date().getMonth()+1);
			session.setAttribute("findOrderBythisMonth",payedOrderService.findOrderBythisMonth());
			session.setAttribute("OrderMonth", payedOrderService.findOrderByMonth());
			session.setAttribute("yearOrderMoney", payedOrderService.findOrderByYear());
			return "AdProfile";
		}
		else {
			return "UserPasswdErr";
		}
	}
	//返回管理员主界面
	@RequestMapping("/ReturnAdIndex")
	public String ReturnAdIndex(HttpSession session) {
		SimpleDateFormat fm=new SimpleDateFormat("yyyy-MM-dd");
		session.setAttribute("date",fm.format(new Date()));
		session.setAttribute("CountOrderByMonth",payedOrderService.CountOrderByMonth());
		session.setAttribute("monthLength",new Date().getMonth()+1);
		session.setAttribute("findOrderBythisMonth",payedOrderService.findOrderBythisMonth());
		session.setAttribute("OrderMonth", payedOrderService.findOrderByMonth());
		session.setAttribute("yearOrderMoney", payedOrderService.findOrderByYear());
		return "AdProfile";
	}
	//删除私教信息
	@RequestMapping("/AdDeleteCoachByid")
	public void AdDeleteCoachByid(@RequestParam("coach_id")int coach_id) {
		coachService.deleteCoachByID(coach_id);
	}
	
	//删除会员信息
	@RequestMapping("/AdDeleteHYByid")
	public void AdDeleteHYByid(@RequestParam("user_id")int user_id) {
		userService.deleteById(user_id);
	}
	
	@RequestMapping("/AdShowAllCoach")
	public String AdShowAllCoach(Model model) throws IOException{
		model.addAttribute("list",coachService.listCoach());
		return "AdCoach";	
	}
	
	@RequestMapping("/AdShowAllCoach111")
	@ResponseBody
	public List<coach> AdShowAllCoach111() throws IOException{
		return coachService.listCoach();	
	}
	//查看私教详细信息
	@RequestMapping("/AdShowCoachDetail")
	public String AdShowCoachDetail(int coach_id,Model model){
		model.addAttribute("coach",coachService.FindCoachByid(coach_id));
		return "AdShowCoachDetail";	
	}
	
	//查看会员详细信息
	@RequestMapping("/AdShoHYDetail")
	public String AdShoHYDetail(int user_id,Model model){
		model.addAttribute("user",userService.findByID(user_id));
		return "AdShowHYDetail";	
	}
	//编辑私教信息
	@RequestMapping("/AdEditCoachDetail")
	public String AdEditCoachDetail(int coach_id,Model model){
		model.addAttribute("coach",coachService.FindCoachByid(coach_id));
		return "AdEditCoach";	
	}
	//修改会员详细信息
	@RequestMapping("/AdEditHYDetail")
	public String AdEditHYDetail(int user_id,Model model){
		model.addAttribute("user",userService.findByID(user_id));
		return "AdEditHY";	
	}
	
	//新增私教信息保存
	@RequestMapping("/InsertCoach")
	public String InsertCoach(Model model,coach coach) throws IOException{
		coachService.insertCoach(coach);
		return this.AdShowAllCoach(model);
		
	}
	//进入私教新增界面
	@RequestMapping("/IntoInsertCoach")
	public String IntoInsertCoach(Model model){
		int new_coachid=coachService.FindMaxCoachId();
		model.addAttribute("new_coachid", new_coachid+1);
		return "AdSaveCoach";	
	}
	
	//编辑私教信息保存
	@RequestMapping("/EditCoach")
	public String EditCoach(coach coach,Model model) throws IOException{
		coachService.updateCoach(coach);
		return this.AdShowAllCoach(model);
	}
	
	//会员管理界面
	@RequestMapping("/AdShowAllUser")
	public String AdShowAllUser(Model model) throws IOException{
		model.addAttribute("list",userService.list());
		return "AdHY";	
	}
	
	//进入会员新增页面
	@RequestMapping("/IntoInsertHY")
	public String IntoInsertHY(Model model) throws IOException{
		model.addAttribute("list",userService.list());
		return "AdSaveHY";	
	}
	
	//新会员信息保存
	@RequestMapping("/InsertHY")
	public String InsertHY(Model model,User user,payedOrder po) throws IOException{
		user.setUser_passwd("1");
		user.setUser_picsrc("unUpload.jpg");
		user.setUser_bodymes_isInput(0);
		
		int userterm=user.getUser_menberTime();
		if(userterm==1) {
			user.setUser_level(1);
		}
		if(userterm==6) {
			user.setUser_level(2);		
		}
		if(userterm==12) {
			user.setUser_level(3);
		}
		if(userterm==24) {
			user.setUser_level(4);
		}
		po.setPay_neworRenewel(0);
		po.setUser_id(user.getUser_id());
		po.setPay_card_level(user.getUser_level());
		po.setPay_time(user.getUser_menberStart());
		userService.save(user);
		po.setUser_id(userService.findNewUser().getUser_id());
		poService.insertpayedOrder(po);
		return this.AdShowAllUser(model);
	}

	
	//课程管理界面
	@RequestMapping("/AdCourse")
	public String AdCourse(Model model) throws IOException, ParseException{
		model.addAttribute("list", techService.ListAlltech());
		return "AdCourse";	
	}
	
	//查看课程
	@RequestMapping("/AdShowCourseDetail")
	public String AdShowCourseDetail(Model model,int tech_id) throws IOException, ParseException{
		model.addAttribute("tech", techService.ShowTechByID(tech_id));
		return "AdShowCourseDetail";	
	}
	
	//编辑课程
	@RequestMapping("/AdEditCourseDetail")
	public String AdEditCourseDetail(Model model,int tech_id) throws IOException, ParseException{
		model.addAttribute("coachList", coachService.listCoach());
		model.addAttribute("courseList", courseService.list());
		model.addAttribute("palaceList", palaceService.list());
		model.addAttribute("tech", techService.ShowTechByID(tech_id));
		return "AdEditCourse";	
	}
	//编辑课程保存
	@RequestMapping("AdSaveEdit")
	@ResponseBody
	public void AdSaveEdit(@RequestBody tech techNew,HttpServletResponse rep) throws IOException, ParseException{
		String msg=techService.CheckEditTechIsRirght(techNew);
		System.out.print(msg);
		rep.setContentType("text/plain;charset=UTF-8");
		rep.getWriter().println(msg);
	}
	//进入新增课程界面
	@RequestMapping("/AdSaveCourse")
	public String AdSaveCourse(Model model) throws IOException, ParseException{
		model.addAttribute("coachList", coachService.listCoach());
		model.addAttribute("courseList", courseService.list());
		model.addAttribute("palaceList", palaceService.list());
		return "AdSaveCourse";	
	}

	//新增课程保存
	@RequestMapping("/SaveNewTech")
	public String SaveNewTech(Model model,tech techNew) throws ParseException, IOException{
		
		if(techService.CheckNewTechIsRirght(techNew)!="T") {
			model.addAttribute("msg", techService.CheckNewTechIsRirght(techNew));
			return "fail";
		}
		return this.AdCourse(model);	
	}
	//新增课程保存
	@RequestMapping("/SaveNewTechByAjax")
	@ResponseBody
	public void SaveNewTechByAjax(@RequestBody tech techNew,HttpServletResponse rep) throws ParseException, IOException{
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		techNew.setTech_create_time(sf.format(new Date()));
		String msg=techService.CheckNewTechIsRirght(techNew);
		rep.setContentType("text/plain;charset=UTF-8");
		rep.getWriter().println(msg);
	}
	
	//删除课程
	@RequestMapping("/AdDeletetechByid")
	public void AdDeletetechByid(@RequestParam("tech_id")int tech_id) {
		techService.deleteTech(tech_id);
	}
	//每月销量统计
	@RequestMapping("/AdCountMonth")
	public String AdCountMonth(Model model) {
		model.addAttribute("OrderMonth", payedOrderService.findOrderByMonth());
		return null;
	}
	
	
	
}

