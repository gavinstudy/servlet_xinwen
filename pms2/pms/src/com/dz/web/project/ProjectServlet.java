package com.dz.web.project;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Project;
import com.dz.service.ProjectService;
@WebServlet("/project")
public class ProjectServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ProjectService	proservice=new  ProjectService();
		List<Project> prolist =proservice.finall();
		req.setAttribute("prolist", prolist);
		req.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(req, resp);
	}
}
