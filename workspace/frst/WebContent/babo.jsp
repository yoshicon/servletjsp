<%@page import="java.util.Enumeration"%>
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
	헤더 정보 추출<br>
<%
	Enumeration<String> head = request.getHeaderNames();
	while(head.hasMoreElements()){
		String hName = head.nextElement();
		String hVal = request.getHeader(hName);
		out.println(hName+" : "+ hVal +"<br>");
	}
%>
</body>
</html>