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
	response.addCookie(CookieUtil.createCookie("mem", "", 0));
	response.addCookie(CookieUtil.createCookie("id", "", 0));
%>
로갓성공
</body>
</html>