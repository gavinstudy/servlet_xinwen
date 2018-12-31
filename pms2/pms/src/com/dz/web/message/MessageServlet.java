package com.dz.web.message;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Project;
import com.dz.service.MessageService;
import com.dz.service.ProjectService;

@WebServlet("/listmsg")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id=req.getParameter("proid");
		ProjectService proservice=new ProjectService();
		Project pro=proservice.findpro(id);
		//将pro设置为session作用域,用于获取
		req.getSession().removeAttribute("project");
		req.getSession().setAttribute("project", pro);
		//获取message信息的列表
		MessageService msgservice=new MessageService();
		List<Map<String ,Object>> msglist=msgservice.findall(id);
		req.setAttribute("msglist", msglist);
		//跳转到project.jsp页面
		req.getRequestDispatcher("/WEB-INF/views/project/project.jsp").forward(req, resp);
	}
	
}
