package com.dz.filter;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public abstract class AbstactFilter implements Filter{

	@Override
	public void destroy() {
		
	}

	public abstract void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException ;
	@Override
	public void init(FilterConfig config) throws ServletException {
		String v = config.getInitParameter("name");
		Enumeration<String> en = config.getInitParameterNames();
	}

}
