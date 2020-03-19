<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>타이틀</title>
</head>
<body bgcolor="#acacac">
<%
	String rm = request.getRemoteAddr();
	System.out.println("클라 주소 : "+rm);
%>

swbb?<%=rm %>



</body>
</html>