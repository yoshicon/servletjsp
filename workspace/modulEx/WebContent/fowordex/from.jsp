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
<%
	Date now = new Date();
	request.setAttribute("dayinfo", now);
%>
대충 프롬에서 생성했다는 내용 <br />
<jsp:forward page="to.jsp"/> <br />
대충 출력 되는지 궁금하다는 내용
<jsp:param value="127" name="mayak"/>

</body>
</html>