package cn.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cn.ssm.service.CoachService;
import cn.ssm.service.UserBodyMeasService;
import cn.ssm.service.UserService;
import cn.ssm.service.impl.CoachServiceImpl;
import cn.ssm.vo.Message;
import cn.ssm.vo.User;
import cn.ssm.vo.UserBodyMeas;
import cn.ssm.vo.UserBookCoach;
import cn.ssm.vo.coach;
@Controller
@SessionAttributes("coach")
public class CoachController {
	@Autowired
	private CoachService coachService;
	public void setCoachService(CoachService coachService) {
		this.coachService=coachService;
	}

	@Autowired
	private CoachServiceImpl coachServiceImpl;
	public void coachServiceImpl(CoachServiceImpl coachServiceImpl) {
		this.coachServiceImpl = coachServiceImpl;
	}
	@Autowired
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService=userService;
	} 
	
	@Autowired
	private UserBodyMeasService userBodyMeasService;
	public void setUserBodyMeasService(UserBodyMeasService userBodyMeasService) {
		this.userBodyMeasService=userBodyMeasService;
	}
	@RequestMapping("/returnCoachProfile")
	//modelmap
	public String returnCoachProfile(ModelMap map) {
		return "CoachProfile";
	}
	
	@RequestMapping("/listCoach")
	//modelmap
	public String listCoach(ModelMap map) {
		map.addAttribute("list",coachService.listCoach());
		return "UserShowCoach";
	}
	
	@RequestMapping("/CoachLogin")
	//modelmap
	public String CoachLogin(Model map,HttpSession session,coach coach) {
		coach coach1=coachService.CoachLogin(coach.getCoach_id(),coach.getCoach_passwd());
		if(coach1 != null) {
			map.addAttribute("coach",coach1);
			session.setAttribute("LogRole", "coach");
			return "CoachProfile";
		}
		else
			return "UserPasswdErr";
	}
	@RequestMapping("/CoachEditInfo")
	public String CoachEditInfo(int coach_id,Model model){
		model.addAttribute("coach",coachServiceImpl.FindCoachByid(coach_id));
		return "CoachEditInfo";	
	}
	//私教查看自己所有的学员
	@RequestMapping("/CoachShowAllXY")
	public String CoachShowAllXY(int coach_id,Model model){
		List<UserBookCoach> list=userService.FindBookCoachByCoachid(coach_id);
		model.addAttribute("list",list);
		return "CoachShowHY";	
	}
	//私教查看学员详情
	@RequestMapping("/CoachShowHYDetail")
	public String CoachShowHYDetail(int user_id,Model model){
		model.addAttribute("user",userService.findByID(user_id));
		model.addAttribute("userBodyMers",userBodyMeasService.FindBodyMeasById(user_id));
		return "CoachShowHYdetail";	
	}
	//进入聊天界面
	@RequestMapping("/EnterCoachChat")
	public String EnterCoachChat(int coach_id,Model model) {
		List<UserBookCoach> list=userService.FindBookCoachByCoachid(coach_id);
		model.addAttribute("list",list);
		return "CoachChatInit";
	}
	
	//选择聊天对象后进入
	@RequestMapping("/EnterCoachChatSingle")
	public String EnterCoachChatSingle(int user_id,int coach_id,String user_name,Model model) {
		
		List<UserBookCoach> list=userService.FindBookCoachByCoachid(coach_id);
		User chatUser=userService.findByID(user_id);
		List<Message> me=userService.ShowMessage(user_id, coach_id);
		if(me.size()>0) {
			model.addAttribute("LastMesTime", me.get(me.size()-1).getMes_data());
			model.addAttribute("userChat", chatUser);
			model.addAttribute("user_name",user_name);
			model.addAttribute("list",list);
			model.addAttribute("me",me);	
			model.addAttribute("coach_id",coach_id);
			return "CoachChat";
		}
		else {
			model.addAttribute("userChat", chatUser);
			model.addAttribute("user_name",user_name);
			model.addAttribute("list",list);
			model.addAttribute("me",me);	
			model.addAttribute("coach_id",coach_id);
			return "CoachChat";
		}
		
	}
	
	//进入录入会员的体测信息界面
	@RequestMapping("/EnterEditUserMear")
	public String EnterEditUserMear(int user_id,Model model) {
		model.addAttribute("user_id", user_id);
		return "CoachEditUserMeas";
	}
	
	//保存体测信息
	@RequestMapping("/SaveUserMear")
	public String SaveUserMear(UserBodyMeas ubodym) {
		UserBodyMeas ub=userBodyMeasService.FindBodyMeasById(ubodym.getUser_id());
		if(ub==null) {
			userBodyMeasService.InsertMeas(ubodym);
		}
		else
			userBodyMeasService.updateMeas(ubodym);
		return "fail";
	}
	//删除头像
	@RequestMapping("/CoachDeleteTX")
	public String CoachDeleteTX(coach coach,Model model) {
		coachService.EditCoachPicToDelete(coach);
		return this.CoachEditInfo(coach.getCoach_id(), model);
	}
	
		
}
