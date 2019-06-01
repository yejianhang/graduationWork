package cn.ssm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.ssm.vo.User;
import cn.ssm.vo.coach;

public class UrlFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO 对全栈url进行过滤
				//将request和response对象强转为http类型
				HttpServletRequest req=(HttpServletRequest)request;
				HttpServletResponse resp = (HttpServletResponse)response;
				
				//获取访问的地址
				String url = req.getRequestURI();
				System.out.println(url);
				
				HttpSession session = req.getSession();
				System.out.println(session.getAttribute("LogRole")+"role");
				//获取session中的对象判断是否登录
				//拦截所有的 .do 请求但不包含tologin.do
				//jsp文件已经放到web-inf下 不用过滤 只过滤 .do请求即可
				
				if(url.contains(".do")&&!url.contains("checkLogin.do")&&!url.contains("CoachLogin.do")){
				User user=(User) session.getAttribute("user");
				coach coach=(coach) session.getAttribute("coach");
				if(user==null&&coach==null){
					resp.sendRedirect("index.jsp");
						return;
					}
				}	
				chain.doFilter(req, resp);
			}
}
