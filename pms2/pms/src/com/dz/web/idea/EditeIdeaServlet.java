package com.dz.web.idea;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Idea;
import com.dz.service.IdeaService;
import com.sun.jmx.snmp.Timestamp;
@WebServlet("/editeidea")
public class EditeIdeaServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
			String id =req.getParameter("id");
			IdeaService iservice=new IdeaService();
			Idea idea=iservice.findidea(id);
			
			String content=req.getParameter("content");
			
			idea.setContent(content);
			idea.setCreatetime(new java.sql.Timestamp(System.currentTimeMillis()));
		
			iservice.editeidea(idea);
			resp.sendRedirect("/listidea");

	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String id=req.getParameter("id");
		IdeaService iservice=new IdeaService();
		Idea idea=iservice.findidea(id);
		req.setAttribute("idea", idea);
		req.getRequestDispatcher("/WEB-INF/views/idea/edite_idea.jsp").forward(req, resp);
	}
}
