<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@	page session="true"%>
<%
	request.setCharacterEncoding("utf-8");
	Date time = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>세션정보</title>
</head>

<body bgcolor="#666666">
세션 아디 : <%= session.getId() %> <br />
<% time.setTime(session.getCreationTime()); %>
생성시간 : <%=dateFormat.format(time) %> <br />
<% time.setTime(session.getLastAccessedTime()); %>
최근 접속 시간 : <%=dateFormat.format(time) %>

<%
	session.setAttribute("mem", "no");
	session.setAttribute("babo", "amin");
%>
<br />
<a href="sessionread.jsp">세션 정보  확인</a> <br />
<a href="sessionclose.jsp">세션 제거</a>
</body>
</html>