package com.dz.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dz.entity.Employee;


public class LoginFilter extends AbstactFilter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)resp;
		String url = request.getRequestURI();
		if(url.startsWith("/img/")||url.startsWith("/font/")||url.startsWith("/css/")|| url.startsWith("/js/")
			||"/resetpwd".equals(url)|"/".equals(url) 	||"/login".equals(url) || "/index".equals(url)|| "index.jsp".equals(url)){
			chain.doFilter(request, response);
		}else{
			HttpSession session = request.getSession();
			Employee emp =(Employee) session.getAttribute("emp");
			if(emp!= null){
				chain.doFilter(request, response);
			}else{
				response.sendRedirect("/index?code=102");
			}
		}
		
	}

}
