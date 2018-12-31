package com.dz.web.message;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dz.entity.Employee;
import com.dz.entity.Message;
import com.dz.service.MessageService;
import com.dz.util.DateUtil;

@WebServlet("/newmessage")
public class NewMessageServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String content=req.getParameter("msg");
		String proid=req.getParameter("proid");
		
		//从session作用域取出Employee对象;
		Employee emp=(Employee)req.getSession().getAttribute("emp");
		
		//创建新的Message对象保存信息
		Message msg=new Message();
		msg.setId(UUID.randomUUID().toString().substring(0,12));
		msg.setContent(content);
		msg.setCreatetime(new Timestamp(System.currentTimeMillis()));
		msg.setProjectid(proid);
		msg.setEmployeeid(emp.getId());
		MessageService msgservice=new MessageService();
		msgservice.save(msg);
		resp.sendRedirect("/listmsg?proid="+proid);
	}
}
