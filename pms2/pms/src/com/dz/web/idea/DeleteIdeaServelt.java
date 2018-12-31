package com.dz.web.idea;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.service.IdeaService;
@WebServlet("/delidea")
public class DeleteIdeaServelt extends HttpServlet{
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			String id=req.getParameter("id");
		
			IdeaService iservice=new IdeaService();
			iservice.delidea(id);
			resp.sendRedirect("/listidea");
		}
		
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("sffsfsf");
		}
}
