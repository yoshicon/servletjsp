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
	String sessData = (String)session.getAttribute("login");
	if(sessData == null){
		response.sendRedirect("/login.jsp");
	}
%>
	회원전용 페이지
</body>
</html>