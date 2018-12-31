package com.dz.web.idea;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Project;
import com.dz.service.IdeaService;


@WebServlet("/listidea")
public class IdeServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//获取session作用域的Project对象
		Project project=(Project)req.getSession().getAttribute("project");

		IdeaService ideaservice=new IdeaService();
		//根据Project的id取出所有的idea信息
		List<Map<String,Object>> idealist=ideaservice.findall(project.getId());
		req.setAttribute("idealist", idealist);
		req.getRequestDispatcher("/WEB-INF/views/idea/idea.jsp").forward(req, resp);
	}
}
