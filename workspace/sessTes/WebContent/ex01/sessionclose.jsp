<%@page import="java.util.Date"%>
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
아이디 : <%= session.getAttribute("mem") %> <br />
닉네임 : <%= session.getAttribute("babo") %> <br />
<hr />
<%
	out.println("세션아디 : "+session.getId()+"<br>");
	out.println("생성시간 : "+new Date(session.getCreationTime())+"<br>");
	out.println("최종접속 : "+new Date(session.getLastAccessedTime())+"<br>");
	session.invalidate();
	out.println("세션 제거 <br>");
%>
<hr />

</body>
</html>