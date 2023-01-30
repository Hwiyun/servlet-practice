<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

	Long number = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	new GuestbookDao().deleteByNoPassword(number, password);
	
	response.sendRedirect(request.getContextPath());
%>