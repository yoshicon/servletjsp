<%@page import="cookses.CookieUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#666666">
<%
	CookieUtil cookut = new CookieUtil(request);
	boolean log = cookut.exists("mem");
	
	if(log)
		out.println("로그인 한 아이디" + cookut.getValue("id"));
	else
		out.println("로그인 하세요");
%>
</body>
</html>