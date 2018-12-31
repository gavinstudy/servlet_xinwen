package com.dz.web.comment;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dz.entity.Idea;
import com.dz.service.IdeaCommentService;
import com.dz.service.IdeaService;
@WebServlet("/listcomment")
public class ListCommentservlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id=req.getParameter("id");
		//获取Idea
		IdeaService ideaservice=new IdeaService();
		Idea idea=ideaservice.findidea(id);
		req.setAttribute("idea",idea);
		
		//查询全部的comment信息
		IdeaCommentService icservice=new IdeaCommentService();
		List<Map<String ,Object>> iclist=icservice.findall(id);
		req.setAttribute("iclist", iclist);
		System.out.println(iclist);
		req.getRequestDispatcher("/WEB-INF/views/idea/idea_show.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	}

}
