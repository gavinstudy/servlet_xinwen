package com.dz.web.project;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Employee;
import com.dz.entity.ProEmp;
import com.dz.entity.Project;
import com.dz.service.EmployeeService;
import com.dz.service.ProEmpService;
import com.dz.service.ProjectService;
@WebServlet("/newpro")
public class NewProjectServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//查询出所有的雇员
		EmployeeService empserivce=new EmployeeService();
		List<Employee> emplist=empserivce.findall();
		req.setAttribute("emplist", emplist);
		//跳转到new_project.jsp创建项目
		req.getRequestDispatcher("/WEB-INF/views/project/new_project.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String proname=req.getParameter("proname");
		String prodesc=req.getParameter("prodesc");
		String lead=req.getParameter("lead");
		String[] emp=req.getParameterValues("emp");
		Project pro =new Project();
		pro.setId( UUID.randomUUID().toString().substring(0,20));
		pro.setName(proname);
		pro.setDesc(prodesc);
		
		ProjectService proservice=new ProjectService();
		proservice.save(pro);
		
		ProEmp	proemp=new ProEmp();
		proemp.setEmployeeid(lead);
		proemp.setProjectid(pro.getId());
		proemp.setRole(Arrays.toString(emp));
		
		ProEmpService peservice=new ProEmpService();
		peservice.save(proemp);
		resp.sendRedirect("/project");
	}
}
