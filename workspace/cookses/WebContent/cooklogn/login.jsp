<%@page import="cookses.CookieUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	String pwd = request.getParameter("pw");
	
	if(uid.equals(pwd)){
		Cookie cookie = CookieUtil.createCookie("mem", "ok");
		response.addCookie(cookie);
		Cookie cookieId = CookieUtil.createCookie("id", uid);
		response.addCookie(cookieId);
		out.println("로그인 성공");
	} else{
%>

<script>
	alert("113333555555777777779999999999");
	history.go(-1);
</script>

<% } %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#666666">
	
</body>
</html>