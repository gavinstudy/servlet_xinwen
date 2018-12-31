package com.dz.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class EncodeFilter extends AbstactFilter{
	
	private String coding = "UTF-8";
	
	@Override
	public void init(FilterConfig config) throws ServletException {
		
		String code = config.getInitParameter("code");
		if(code != null){
			coding = code;
		}
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		request.setCharacterEncoding(coding);
		chain.doFilter(req, resp);
		
	}

}
