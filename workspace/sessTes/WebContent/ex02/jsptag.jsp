<%@page import="domain.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>자바 빈 안 쓰는거</title>
</head>

<body bgcolor="#666666">
<%
	MemberInfo mi = new MemberInfo();
	mi.setId("babo");
	mi.setAddr("zip");
	mi.setPass("127");
%>

id : <%= mi.getId() %> <br />
id : <%= mi.getPass() %> <br />
ad : <%= mi.getAddr() %> <br />
</body>
</html>