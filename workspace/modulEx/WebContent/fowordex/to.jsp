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
<body bgcolor="#acacac">
<%
	String nama = request.getParameter("nama");
	String ada = request.getParameter("mayak");
%>
	단또~~ <br />
	주소창에서 파라메타로 받은거 특 : <%=nama %>임 <br />
	from에서 파라메터라 받은거 특 : <%=ada %>
<%
	Date accData = (Date)request.getAttribute("dayinfo");
%>
어트리븉로 자료 줄력 <%=accData.toString() %> <br />
<%= accData.getYear() %>년 <br />
<%= accData.getMonth()+1 %>월 <br />
<%= accData.getDay() %>일 <br />
<%= accData.getHours() %>시 <br />
<%= accData.getMinutes() %>분 <br />
<%= accData.getSeconds() %>초 <br />
</body>
</html>