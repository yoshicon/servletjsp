<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>세션</title>
</head>
<body bgcolor="#666666">

<form action="login.jsp" method="post">
	<input type="text" name="id" placeholder="아이디 입력"/> <br />
	<input type="password" name="pw" placeholder="비밀번호 입력"/> <br />
	<input type="submit" value="로그인"/> <br />
	<input type="reset" value="취소"/> <br />
</form>

</body>
</html>