<%@page import="cookses.CookieUtil" %>
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
Cookie ck1 = CookieUtil.createCookie("babo", "ing");
Cookie ck2 = CookieUtil.createCookie("babu", "han", 60);
Cookie ck3 = CookieUtil.createCookie("logif", "ok", "/cookses/babu", 30);

response.addCookie(ck1);
response.addCookie(ck2);
response.addCookie(ck3);
%>

쿠키 3개
</body>
</html>