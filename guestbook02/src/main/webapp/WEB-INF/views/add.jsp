
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
		request.setCharacterEncoding("utf-8");

	String name = request.getParameter("Name");
	String password = request.getParameter("Password");
	String message = request.getParameter("Message");

	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	System.out.println(vo.toString());
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("/guestbook01");

%>