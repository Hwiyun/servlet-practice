<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
	int number = list.size();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<h1>방명록 예제</h1>
	<form action="<%=request.getContextPath() %>/gb?a=add" method="post">
	
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5 style="resize:none"></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	
	<%
		for(GuestbookVo vo : list) {
	%>
	<table width=510 border=1>
		<tr>
			<td><%=number--  %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getDate() %></td>
			<td><a href="<%=request.getContextPath() %>/gb?a=deleteform&&no=<%=vo.getNumber() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><textarea cols=60 readonly style="resize:none"><%=vo.getMessage() %></textarea></td>
		</tr>
	</table>
	<%
		}
	%>
</body>
</html>