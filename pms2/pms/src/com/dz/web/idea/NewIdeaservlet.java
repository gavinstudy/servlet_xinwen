package com.dz.web.idea;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Employee;
import com.dz.entity.Idea;
import com.dz.entity.Project;
import com.dz.service.IdeaService;
@WebServlet("/newidea")
public class NewIdeaservlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/idea/new_idea.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Idea idea=new Idea();
		idea.setId(UUID.randomUUID().toString().substring(0,10));
		idea.setTitle(req.getParameter("title"));
		idea.setContent(req.getParameter("content"));
		idea.setCreatetime(new Timestamp(System.currentTimeMillis()));
		//获取session作用域中Project对象
		Project project=(Project)req.getSession().getAttribute("project");
		idea.setProjectid(project.getId());
		//获取session作用域中Employee对象
		Employee emp=(Employee)req.getSession().getAttribute("emp");
		idea.setEmployeeid(emp.getId());
		
		IdeaService ideaservice=new IdeaService();
		ideaservice.save(idea);
		
		resp.sendRedirect("/listidea");
	}
}
