package cn.ssm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.ssm.service.quesAndAnsService;
import cn.ssm.vo.quesAndAns;
@Controller
public class quesAndAnsController {
	@Autowired
	private quesAndAnsService quesAndAnsService;
	public void setquesAndAnsService(quesAndAnsService quesAndAnsService) {
		this.quesAndAnsService = quesAndAnsService;
	}
	
	//list all que&ans
	@RequestMapping("/listQandA")
	public String listQandA(Model model) {
		model.addAttribute("list", quesAndAnsService.list());
		model.addAttribute("countAll", quesAndAnsService.countAll());
		model.addAttribute("countUnsolved", quesAndAnsService.countUnsolved());
		return "queAndAns";
	}
	
	@RequestMapping("/ShowQueAndAns")
	public String ShowQueAndAns(Model model,int q_id) {
		quesAndAnsService.updatePageView(q_id);
		int isResolve=quesAndAnsService.showQandAdetail(q_id).get(0).getQ_isResolve();
		model.addAttribute("isResolve", isResolve);
		model.addAttribute("QueAndAnsDetail", quesAndAnsService.showQandAdetail(q_id).get(0));
		model.addAttribute("AllQueAndAnsDetail", quesAndAnsService.showQandAdetail(q_id));
		model.addAttribute("ansNum", quesAndAnsService.showQandAdetail(q_id).size());
		return "QueAndAnsDetail";
	} 
	//增加回答
	@RequestMapping("/riseAns")
	public String riseAns(Model model,quesAndAns qa) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		qa.setAns_time(df.format(new Date()));
		quesAndAnsService.updateQueStatus(qa.getQ_id());
		quesAndAnsService.RiseAns(qa);
		return this.ShowQueAndAns(model, qa.getQ_id());
	}
	
	//进入话题发起界面
	@RequestMapping("/IntoRiseQuePage")
	public String IntoRiseQuePage() {
		return "UserRiseQue";
	}
	
	//话题发起
	@RequestMapping("/riseQue")
	public String riseQues(Model model,quesAndAns qa) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		qa.setQ_rise_time(df.format(new Date()));
		
		quesAndAnsService.RiseQuestion(qa);
		return this.listQandA(model);
		
	}

	
}
