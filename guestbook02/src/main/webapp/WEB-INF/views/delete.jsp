
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

	Long number = Long.parseLong(request.getParameter("Number"));
	String password = request.getParameter("Password");

	GuestbookVo vo = new GuestbookVo();
	vo.setPassword(password);
	vo.setNumber(number);
	System.out.println(vo.toString());
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("/guestbook01");
%>