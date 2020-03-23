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
<body bgcolor="666666">
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0)
		for(Cookie cookie : cookies){
			out.println("쿠키명 : " + cookie.getName() + "<br>");
			out.println("쿠키값 : " + cookie.getValue() + "<br>");
		}
	else
		out.println("쿠키 특) 없음");
		
%>
</body>
</html>