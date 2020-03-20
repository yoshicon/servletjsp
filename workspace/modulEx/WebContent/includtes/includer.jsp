<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>인클루드</title>
</head>
<body bgcolor="#666666">
<%
	String id = "yeah";
%>
<%@ include file="incd.jspf" %> <br />
결과 <br />
<%= iName %> <br />
<%= addr %>
</body>
</html>