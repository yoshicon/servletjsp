<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>멤버 어쩌구 저쩌구</title>
</head>

<body bgcolor="#666666">
<h1>대충 회원가입 화면</h1>

<form action="prosess.jsp" method="post">
		아디 : <input type="text" name="id" /> <br />
		비번 : <input type="password" name="pass" /> <br />
		주소 : <input type="text" name="addr" /> <br />
		메일 : <input type="text" name="email" /> <br />
		
		<input type="submit" value="가입" />
</form>

</body>
</html>