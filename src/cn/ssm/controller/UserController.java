package cn.ssm.controller;



import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;


import cn.ssm.service.CoachService;
import cn.ssm.service.CourseAssessService;
import cn.ssm.service.CourseService;
import cn.ssm.service.FileService;
import cn.ssm.service.UserBodyMeasService;
import cn.ssm.service.UserBookCourseService;
import cn.ssm.service.UserService;
import cn.ssm.service.payedOrderService;
import cn.ssm.service.techService;
import cn.ssm.vo.CourseAssess;
import cn.ssm.vo.Message;
import cn.ssm.vo.RenewalsOrder;
import cn.ssm.vo.User;
import cn.ssm.vo.UserBookCoach;
import cn.ssm.vo.UserBookCourse;
import cn.ssm.vo.coach;
import cn.ssm.vo.file;
import cn.ssm.vo.payedOrder;

@Controller
//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
@SessionAttributes("user")
public class UserController {
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
	private FileService fileService;
	public void setFileService(FileService fileService) {
		this.fileService= fileService;
	}
	
	@Autowired
	private UserBodyMeasService userBodyMeas;
	public void setUserBodyMeas(UserBodyMeasService userBodyMeas) {
		this.userBodyMeas = userBodyMeas;
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
	private CourseAssessService cas;
	public void setCourseAssessService(CourseAssessService cas) {
		this.cas = cas;
	}
	@Autowired
	private UserBookCourseService ubcs;
	public void setUserBookCourseService(UserBookCourseService ubcs) {
		this.ubcs=ubcs;
	}
	@Autowired
	private techService techService;
	public void settechService(techService techService) {
		this.techService=techService;
	}
	
	@RequestMapping("/list")
	//modelmap
	public String list(ModelMap map) {
		map.addAttribute("list",userService.list());
		return "list";
	}
	@RequestMapping(value="/findByID")  //welcome要访问的url地址
    public  ModelAndView findByID(HttpServletRequest req,HttpServletResponse resp,int id) {
	 	ModelAndView mv=new ModelAndView();
	 	mv.addObject("bean", userService.findByID(id));
	 	mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping(value="/save")  //welcome要访问的url地址
    public  ModelAndView save(HttpServletRequest req,HttpServletResponse resp,User user) {
	 	ModelAndView mv=new ModelAndView();
	 	userService.save(user);
	 	mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping(value="/delete")  //welcome要访问的url地址
    public  ModelAndView delete(HttpServletRequest req,HttpServletResponse resp,User user) {
	 	ModelAndView mv=new ModelAndView();
	 	user.setUser_id(5);
	 	userService.deleteById(user.getUser_id());
	 	mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping(value="/update")  //welcome要访问的url地址
    public  ModelAndView update(HttpServletRequest req,HttpServletResponse resp,User user) {
	 	ModelAndView mv=new ModelAndView();
	 	user.setUser_id(2);
	 	
	 	userService.update(user);
	 	mv.setViewName("list");
		return mv;
	}
		
	//用户登录
	@RequestMapping("/checkLogin")
	public String checkLogin(User user,HttpSession session,Model model) throws ParseException{
		//调用service方法
		user = userService.checkLogin(user.getUser_id(), user.getUser_passwd());
		int coachNum=coachService.listCoach().size();
		int courseNum=techService.CountAlltech();
		//若有user则添加到model里并且跳转到成功页面
		if(user != null){
			model.addAttribute("user",user);
			session.setAttribute("coachNum", coachNum);
			session.setAttribute("courseNum", courseNum);
			session.setAttribute("IsOverdue", userService.findCardInfoByID(user.getUser_id()).getUser_card_isDue());
			return "profile";
		}
		else
			return "UserPasswdErr";
	}
	
	//返回主页
	@RequestMapping("/returnProfile")
	public String returnProfile(Model model){
		return "profile";
	}
	
	//注销方法
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		//通过session.invalidata()方法来注销当前的session
		session.invalidate();
		return "login";
	}
	//用户选课
	@RequestMapping("/userBookCourse")
	@ResponseBody
	public void userBookCourse(@RequestParam("user_id")int user_id,@RequestParam("course_id")int course_id,HttpServletResponse rep) throws IOException{
		boolean isbook=userService.userBookCourse(user_id,course_id);
		rep.setContentType("text/plain;charset=UTF-8");
		rep.getWriter().println(isbook);
		
	}
	//查看私教详细信息
	@RequestMapping("/UserShowCoachDetail")
	public String UserShowCoachDetail(int coach_id,Model model) {
		coach coach=coachService.FindCoachByid(coach_id);
		model.addAttribute("coach", coach);
		return "UserShowCoachDetail";
	}
	
	
	//ajax json text
	@RequestMapping("/findUser.do")
	@ResponseBody
	public User checkBook(@RequestParam("isbn")int isbn)
	{
	    User user=userService.findByID(isbn);
	    return user;
	}
	//用户查看体测记录
	@RequestMapping("/UserShowBodyMeas")
	public String UserShowBodyMeas(User user,Model model) {
		int isInput=userService.findByID(user.getUser_id()).getUser_bodymes_isInput();
		int isBookCoach=userService.FindisBookCoachByid(user.getUser_id());
		if(isInput==1) {
			model.addAttribute("userBodyMeas", userBodyMeas.FindBodyMeasById(user.getUser_id()));
			return "UserShowBodymes";
		}
		else {
			model.addAttribute("isBookCoach", isBookCoach);
			return "UserShowMesEro";
		}
			
	}
	//用户选私教
	@RequestMapping("/userBookCoach")
	public String userBookCoach(String user_id,@RequestParam("coach_id")int coach_id,Model model) {
		boolean isbook=userService.checkUserBookCoach(Integer.parseInt(user_id), coach_id);
		System.out.print("选教练"+user_id+coach_id);
		UserBookCoach userBookCoach=new UserBookCoach();
		userBookCoach.setUser_id(Integer.parseInt(user_id));
		userBookCoach.setCoach_id(coach_id);
		if(isbook==false) {
			model.addAttribute("user_id", user_id);
			model.addAttribute("coach_id", coach_id);
			return "UserBookCoachSuc";
		}
		else {
			model.addAttribute("user_id", user_id);
			model.addAttribute("coach_id", coach_id);
			return "UserBookCoachFail";
		}
			
	}
	//进入聊天界面
	@RequestMapping("/UserEnterChatPanel")
	public String EnterChatPanel(Model model) {
		List<coach> list=coachService.listCoach();
		model.addAttribute("coachList",list);
		return "UserChatInit";
	}
	//进入个人聊天界面
	@RequestMapping("/EnterChat")
	public String EnterChat(String user_id,int coach_id,Model model) {
		List<coach> coachList=coachService.listCoach();
		List<Message> me=userService.ShowMessage(Integer.parseInt(user_id), coach_id);
		if(me.size()!=0) {
			Message lastMe=me.get(me.size()-1);
			model.addAttribute("lastMes", lastMe);
		}
		model.addAttribute("me",me);
		model.addAttribute("coachList",coachList);	
		model.addAttribute("coach_id",coach_id);
		return "chat";
	}
	
	
	//选择成功失败后进入聊天界面
	@RequestMapping("/EnterChat1")
	public String EnterChat1(Model model,HttpSession hs) {
		User user=(User)hs.getAttribute("user");
		int user_id=user.getUser_id();
		UserBookCoach userBookCoach=userService.findUserBookCoachByid(user_id);
		return this.EnterChat(user_id+"", userBookCoach.getCoach_id(), model);
	}
	
	//用户发信息
	@RequestMapping("/UserSendMes")
	public String UserSendMes(Message mes,Model model) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		mes.setMes_data(df.format(new Date()));
		userService.UserSendMes(mes);
		return this.EnterChat(mes.getMes_user_id()+"", mes.getMes_coach_id(), model);
		
	}
	
	//用户查看已选课程
	@RequestMapping("/UseShowBookedCourse")
	public String UseShowBookedCourse(int user_id,Model model) throws ParseException {
		model.addAttribute("tech_list", userService.UserShowBookedCourse(user_id));
		return "UserShowBookedCourse";
	}
	//进入编辑界面
	@RequestMapping("/IntoEdit")
	public String IntoEdit(int user_id,Model model) {
		model.addAttribute("user", userService.findByID(user_id));
		return "UserEditInfo";
	}
	
	//用户查看已选私教
	@RequestMapping("/UseShowBookedCoach")
	public String UseShowBookedCoach(int user_id,Model model) {
		coach BookedCocah=userService.FindBookCoachByUserid(user_id);
		if(BookedCocah!=null) {
			List<file> fileList=fileService.listFileById(BookedCocah.getCoach_id());
			model.addAttribute("filesize", fileList.size());
			model.addAttribute("fileList", fileList);
			model.addAttribute("BookedCocah", BookedCocah);
			return "UserShowBookedCoach";
		}
		else
			return "UserNotBookCoach";
		
	}
	
	//删除已选课程
	@RequestMapping("/deleteBook")
	public String deleteBook(@RequestParam("user_id")String user_id,@RequestParam("course_id")String course_id,Model model) {
		UserBookCourse ubc=new UserBookCourse();
		ubc.setCourse_id(Integer.parseInt(course_id));
		ubc.setUser_id(Integer.parseInt(user_id));
	    userService.deleteBook(ubc);
		return "fail";	
	}
	
	//ajax动态查询所有课程
	@RequestMapping("/ajaxSearchCourse")
	@ResponseBody
	public void ajaxSearchCourse(@RequestParam("course_name")String course_name,HttpServletResponse rep) throws IOException{
		String serachCourse=courseService.blurSearch(course_name);
		System.out.print(serachCourse);
		rep.setContentType("text/plain;charset=UTF-8");
		rep.getWriter().println(serachCourse);
	}
	
	//删除头像
	//进入编辑界面
	@RequestMapping("/DeleteTX")
	public String DeleteTX(User user,Model model) {
		userService.EditUserPicToDelete(user);
		return this.IntoEdit(user.getUser_id(), model);
	}
	
	@RequestMapping("/EditUserText")
	public String EditUserText(User user,Model model) {
		userService.EditUserText(user);
		return this.returnProfile(model);
	}
	
	//进入编辑界面
	@RequestMapping("/ShowCardInfo")
	public String ShowCardInfo(User user,Model model) throws ParseException {
		User userInfo=userService.findCardInfoByID(user.getUser_id());
		model.addAttribute("user", userInfo);
		return "UserCardInfo";
	}
	//进入续费界面
	@RequestMapping("/IntoRenewals")
	public String IntoRenewals(Model model) {
		return "UserRenewals";
	}
	
	//续费后进入支付界面
	@RequestMapping("/Renewals")
	public String Renewals(RenewalsOrder ro,Model model) {
		model.addAttribute("ro", ro);
		return "UserPay";
	}
	
	//支付
	@RequestMapping("/UserPay")
	public String UserPay(payedOrder po,HttpSession session,Model model) throws ParseException {
		
		SimpleDateFormat fm=new SimpleDateFormat("yyyy-MM-dd");
		po.setPay_time(fm.format(new Date()));
		poService.insertpayedOrder(po);
		userService.UserRenewals(po);
		session.setAttribute("IsOverdue", 0);
		return "UserPaySuc";
	}
	
	//进入评论课程界面
	@RequestMapping("/UserAssessCourse")
	public String UserAssessCourse(Model model,int course_id,int book_id) {
		model.addAttribute("book_id", book_id);
		model.addAttribute("course_id",course_id);
		return "UserAssessCourse";
	}
	
	//提交评论
	@RequestMapping("/UserSubmitAssess")
	public String UserSubmitAssess(CourseAssess ca,int book_id,Model model) throws ParseException {
		ubcs.updateAssessStatu(book_id);
		cas.InsertAssess(ca);
		return this.UseShowBookedCourse(ca.getCourse_id(), model);
	}

	//查看个人资料
	@RequestMapping("/UserShowInfo")
	public String UserShowInfo(int user_id,Model model) {
		model.addAttribute("user", userService.findByID(user_id));
		return "UserShowInfo";
	}
	
}
	
	
