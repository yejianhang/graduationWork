package cn.ssm.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.ssm.dao.CoachDao;
import cn.ssm.service.CoachService;
import cn.ssm.service.FileService;
import cn.ssm.service.UserService;
import cn.ssm.vo.User;
import cn.ssm.vo.coach;
import cn.ssm.vo.file;
@Controller
public class ToolController {
	@Autowired
	private CoachService coachService;
	public void setCoachService(CoachService coachService) {
		this.coachService= coachService;
	}
	
	@Autowired
	private UserService userservice;
	public void setUserSerivce(UserService userService) {
		this.userservice=userService;
	}
	
	@Autowired
	private FileService fileService;
	public void setFileService(FileService fileService) {
		this.fileService= fileService;
	}
	
	@Autowired
	private CoachController cc;
	public void setCoachController(CoachController cc) {
		this.cc= cc;
	}
	@Autowired
	private UserController uc;
	public void setUserController(UserController uc) {
		this.uc= uc;
	}
	
	/**
      * 用户图片上传
	* @param request
	* @return
	*/
	@RequestMapping(value="/UserEditPic",produces="text/html;charset=utf-8")
	private String UserEditPic(@RequestParam("file")CommonsMultipartFile partFile,User user,Model model) {
		try {
			
			String path ="G:\\gym_manage_local" ;
			String filename = partFile.getOriginalFilename();
			user.setUser_picsrc(filename);
	 
			File file = new File(path+"/"+filename);
			InputStream inputStream = partFile.getInputStream();
			FileUtils.copyInputStreamToFile(inputStream, file);
			if(inputStream!=null){
				inputStream.close();
			}
			userservice.EditUserPic(user);
			return uc.IntoEdit(user.getUser_id(), model);
		} 
		catch (Exception e) {
			e.printStackTrace();
			return "文件上传失败！";
	     } 
	}
	/**
     * 私教图片上传
	* @param request
	* @return
	*/
	@RequestMapping(value="/CoachEditPic",produces="text/html;charset=utf-8")
	private String CoachEditPic(@RequestParam("file")CommonsMultipartFile partFile,coach coach,Model model) {
		try {
			
			String path ="G:\\gym_manage_local" ;
			String filename = partFile.getOriginalFilename();
			coach.setCoach_picsrc(filename);
	 
			File file = new File(path+"/"+filename);
			InputStream inputStream = partFile.getInputStream();
			FileUtils.copyInputStreamToFile(inputStream, file);
			if(inputStream!=null){
				inputStream.close();
			}
			coachService.EditPicSrc(coach);
			return cc.CoachEditInfo(coach.getCoach_id(), model);
		} 
		catch (Exception e) {
			e.printStackTrace();
			return "文件上传失败！";
	     } 
	}
	//进入文件上传界面
	@RequestMapping("/EnterFileCenter")  
	public String EnterFileCenter(Model model,int Upload_id) {
		List<file> fileList=fileService.listFileById(Upload_id);
		model.addAttribute("fileList", fileList);
		return "FileCenter";  	
	}
	//查看上传图片
	@RequestMapping("/SelectPic")  
	public String SelectPic(Model model,int Upload_id) {
		List<file> fileList=fileService.findPicByid(Upload_id);
		model.addAttribute("fileList", fileList);
		return "FileCenter";  	
	}
	//查看上传文档
	@RequestMapping("/SelectNotPic")  
	public String SelectNotPic(Model model,int Upload_id) {
		List<file> fileList=fileService.findNotPicByid(Upload_id);
		model.addAttribute("fileList", fileList);
		return "FileCenter";  	
	}
	
	//私教删除上传文件
	@RequestMapping("/CoachdeleteFile")
	public String CoachdeleteFile(Model model,file file) {
		fileService.CoachdeleteFile(file);  
		return this.EnterFileCenter(model, file.getUpload_id());
	}
	
	@RequestMapping(value="/upload3",produces="text/html;charset=utf-8")
	private String upload3(@RequestParam("file")CommonsMultipartFile partFile,file file1,Model model) {
		try {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			String path ="G:\\gym_manage_local" ;
			String filename = partFile.getOriginalFilename();
			file1.setFile_name(filename);
			
			file1.setFile_src(path);
			String fileisPic[]=filename.split("\\.");
			if(fileisPic[1].equals("png")||fileisPic[1].equals("jpg")||fileisPic[1].equals("JPG")||fileisPic[1].equals("PNG")) {
				file1.setFile_ispic(1);
			}
			else
				file1.setFile_ispic(0);
			
			file1.setFile_uptime(df.format(new Date()));
			fileService.uploadFile(file1);
			File file = new File(path+"/"+filename);
			InputStream inputStream = partFile.getInputStream();
			FileUtils.copyInputStreamToFile(inputStream, file);
			if(inputStream!=null){
				inputStream.close();
			}
			return this.EnterFileCenter(model, file1.getUpload_id());
		} 
		catch (Exception e) {
			e.printStackTrace();
			return this.EnterFileCenter(model, file1.getUpload_id());
	     } 
	}
	@RequestMapping("/downFile")  
	public void downFile(String file_name,HttpServletRequest request,  
	        HttpServletResponse response) {  
		String fileSaveRootPath="G:\\gym_manage_local" ;
	    try {  
	        // 得到要下载的文件  
	        File file = new File(fileSaveRootPath + "\\" + file_name);  
	          
	        // 如果文件不存在  
	        if (!file.exists()) {  
	            request.setAttribute("message", "您要下载的资源已被删除！！");  
	            System.out.println("您要下载的资源已被删除！！");  
	            return;  
	        }  
	        // 处理文件名  
	        String realname = file_name.substring(file_name.indexOf("_") + 1);  
	        // 设置响应头，控制浏览器下载该文件  
	        response.setHeader("content-disposition", "attachment;filename="  
	                + URLEncoder.encode(realname, "UTF-8"));  
	        // 读取要下载的文件，保存到文件输入流  
	        FileInputStream in = new FileInputStream(fileSaveRootPath + "\\" + file_name);  
	        // 创建输出流  
	        OutputStream out = response.getOutputStream();  
	        // 创建缓冲区  
	        byte buffer[] = new byte[1024];  
	        int len = 0;  
	        // 循环将输入流中的内容读取到缓冲区当中  
	        while ((len = in.read(buffer)) > 0) {  
	            // 输出缓冲区的内容到浏览器，实现文件下载  
	            out.write(buffer, 0, len);  
	        }  
	        // 关闭文件输入流  
	        in.close();  
	        // 关闭输出流  
	        out.close();  
	    } catch (Exception e) {  
	  
	    }  
	}  
		
}
