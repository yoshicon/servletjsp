<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	Cookie cook = new Cookie("name", "babo");
	cook.setPath("./babo");
	response.addCookie(cook);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쿠키 실습</title>
</head>
<body bgcolor="#666666">
	쿠키특) 생성됨
</body>
</html>