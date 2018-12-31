package com.dz.web.comment;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Employee;
import com.dz.entity.IdeaComment;
import com.dz.service.IdeaCommentService;
@WebServlet("/newcomment")
public class NewCommentServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String content=req.getParameter("content");
		
		Employee emp=(Employee)req.getSession().getAttribute("emp");
		String empid=emp.getId();
		IdeaCommentService	icservice=new IdeaCommentService();
		IdeaComment ic=new IdeaComment();
		ic.setId(UUID.randomUUID().toString().substring(0,10));
		ic.setContent(content);
		ic.setCreatetime(new Timestamp(System.currentTimeMillis()));
		ic.setEmployeeid(empid);
		ic.setIdeaid((String)(req.getSession().getAttribute("ideaid")));
		//±£¥Ê∂‘œÛ
		icservice.save(ic);
		resp.sendRedirect("/listcomment?id="+(String)(req.getSession().getAttribute("ideaid")));
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	}
	

}
