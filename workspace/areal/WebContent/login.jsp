<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	boolean memCk = id.equals(pw);
	
	if(memCk){
		session.setAttribute("login", "성공");
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>세션 확인</title>
</head>
<body bgcolor="#666666">
<%
	String msg="";
	String loc="/";
	if(session.getAttribute("login") != null){
		msg="성공";
		loc = "/member.jsp";
	}else{ 
		msg ="실패";
		loc="/index.jsp";
	}
%>

<h1>로그인 결과</h1>
<%=msg %>

<a href="<%=loc%>"> 돌아가 </a>
</body>
</html>