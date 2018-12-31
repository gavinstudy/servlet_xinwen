package com.dz.web.employee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Employee;
import com.dz.service.EmployeeService;
@WebServlet("/register")
public class RegisterServlet  extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/newemp.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String uname= req.getParameter("uname");
		String upwd =req.getParameter("upwd");
		
		if(uname!=null && !"".contains(uname)){
			Employee emp1=new Employee();
			EmployeeService empservice =new EmployeeService();
			emp1=(Employee) empservice.listemp(uname);
			if(emp1==null){
				Employee emp=new Employee();
				emp.setUsername(uname);
				emp.setPassword(upwd);
				if(emp.getPassword()!=null &&!emp.getPassword().equals("")){
					empservice.save(emp);
					resp.sendRedirect("/index");
				}else {
					resp.sendRedirect("/register?code=106");
				}
			}else{
				resp.sendRedirect("/register?code=107");
			}
		}else{
				resp.sendRedirect("/register?code=108");
			}
	}

}