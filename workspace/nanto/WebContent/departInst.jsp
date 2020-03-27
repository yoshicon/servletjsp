<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>부서관리 입력</title>
</head>

<body bgcolor="#666666">
<h1>대충 입력하하는 내용</h1>
<form action="instInstAct.jsp" method="post">
부서코드 : <input type="number" name="departmentId" /> - 프라이머리키 <br />
부서이름 : <input type="text" name="departName" /> - 널 ㅗㅗ<br />
관리자번 : <input type="number" name="manaId" /> <br />
부서위치 : <input type="number" name="locId" /> <br />
<input type="submit" value="부서입력" /> &nbsp;&nbsp;&nbsp; <input type="reset" value="내용 초기화" />
</form>

<a href="instInstAct.jsp">입력한 화면 보기</a> <br />

</body>
</html>