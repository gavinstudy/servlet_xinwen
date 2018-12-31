package com.dz.web.employee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Employee;
import com.dz.service.EmployeeService;
@WebServlet("/resetpwd")
public class ResetpasswordServlet  extends HttpServlet{

	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/resetpwd.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String uname= req.getParameter("uname");
		String upwd =req.getParameter("upwd");
		
		if(uname!=null && !"".equals(uname)){
			EmployeeService empservice =new EmployeeService();
			Employee emp =(Employee) empservice.listemp(uname);
			System.out.println(emp);
			if(emp !=null){
				emp.setUsername(uname);
				if(upwd!=null&!"".equals(upwd)){
					emp.setPassword(upwd);
					empservice.updatemp(emp);
				}else{
					resp.sendRedirect("/resetpwd?code=105");
					return;
				}
			}else {
				resp.sendRedirect("/resetpwd?code=104");
				return;
			}
		
		}else{
			resp.sendRedirect("/resetpwd?code=109");
			return;
		}
		resp.sendRedirect("/index");
	}
	
}