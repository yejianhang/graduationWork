package cn.ssm.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Weathr {
	@RequestMapping("/EnterFileCenter111")  
	public String EnterFileCenter111(Model model,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	{
	String url_str = "http://www.weather.com.cn/data/cityinfo/101010100.html";
    url_str= url_str+"?city="+URLEncoder.encode("南宁", "UTF-8");
    System.out.println(url_str);
    //new一个URL路径
    URL url  = new URL(url_str);
    HttpURLConnection conn = null;
    conn = (HttpURLConnection) url.openConnection();
    conn.setDoOutput(true);
    conn.setDoInput(true);
    conn.setRequestMethod("GET");
    conn.setUseCaches(false);//为了防止访问脏数据
    
    //第一步：上传参数（可以没有）
    /*
    OutputStream os = conn.getOutputStream();//获取一个输出流
    DataOutputStream dos = new DataOutputStream(os);
    dos.writeBytes("city="+URLEncoder.encode("北京", "UTF-8"));
    dos.flush();
    dos.close();
    */
    //第二步，开始下载对方服务器影响的内容
    if( conn.getResponseCode()==HttpURLConnection.HTTP_OK){
        System.out.println("访问远程服务器正常");
        InputStream is = conn.getInputStream();
        InputStreamReader isr = new InputStreamReader(is,"UTF-8");
        BufferedReader br = new BufferedReader(isr);
        String result = "";
        String readOneLine = null;
        StringBuffer sb = new StringBuffer();
        while((readOneLine=br.readLine())!=null){
            sb.append(readOneLine);
        }
        result = sb.toString();
        System.out.println("对方服务器响应的内容："+result);
        br.close();
        isr.close();
        is.close();
        conn.disconnect();
        
        /*以下6行代码复制粘贴进来就可以了*/
        response.setContentType("text/json;charset=UTF-8;pageEncoding=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        //浏览器和缓存服务器都不应该缓存页面信息
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        PrintWriter out = response.getWriter();
        out.print(result);
        
    }else{
        System.out.println("访问远程服务器有异常:"+conn.getResponseCode());
    }}
	return null;
	}

}