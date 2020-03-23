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
	<form action="<%= request.getContextPath() %>/cooklogn/login.jsp" method="post">
	id : <input type="text" name="id"/> <br />
	pw : <input type="password" name="pw"/> <br />
	<input type="submit" value="로그인"/>
	</form>
</body>
</html>