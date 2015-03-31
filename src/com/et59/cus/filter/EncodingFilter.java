package com.et59.cus.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * <p>
 * Title: EncodingFilter.java
 * </p>
 * <p>
 * Description:解决乱码问题的过滤器
 * </p>
 * 
 * @version 1.0
 *
 */
public class EncodingFilter implements Filter {

	private String encoding = "UTF-8";

	public void init(FilterConfig filterconfig) throws ServletException {
		encoding = filterconfig.getInitParameter("encoding");
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterchain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		httpRequest.setCharacterEncoding(encoding);
		// /uploadFile/teacher/*.docx
		// String url = httpRequest.getServletPath();
		// if (url.indexOf("/uploadFile/") < 0) {
		filterchain.doFilter(request, response);
		// } else {
		// RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		// dispatcher.forward(request, response);
		// }

	}

	public void destroy() {

	}

}
