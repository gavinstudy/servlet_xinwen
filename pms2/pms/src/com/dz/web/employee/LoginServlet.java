package com.dz.web.employee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Employee;
import com.dz.service.EmployeeService;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.sendRedirect("/project");
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("pwd");
		
		EmployeeService empservice=new EmployeeService();
		Employee emp=empservice.listemp(username,password);
		
		if(emp!=null){
			//将用户设置为session作用域便于取用
			req.getSession().removeAttribute("emp");
			req.getSession().setAttribute("emp", emp);
			resp.sendRedirect("/login");
		}else{
			resp.sendRedirect("/index?code=101");
		}
	}
}
