<%@page import="com.babo.DepartmentsVO"%>
<%@page import="com.babo.DepartmentsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	
	int 	departmentId = Integer.parseInt( request.getParameter("departmentId") );
	String 	departName 	 = request.getParameter("departName");;
	int 	manaId 		 = Integer.parseInt( request.getParameter("manaId"));
	int 	locId 		 = Integer.parseInt( request.getParameter("locId"));
	
	
	// 자바 클래스에 자료 넘기면서 입력하라고 요청
	DepartmentsDAO dao = new DepartmentsDAO();
	DepartmentsVO vo = new DepartmentsVO(departmentId, departName, manaId, locId);
	int result = dao.insert(vo);
	String rsMsg="입력, 완료, 정상";
	if(result != 1)
		rsMsg="입력, 실패, 오류";
	// 입력유무 출력
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>결과 출력 화면</title>
</head>

<body bgcolor="#666666">

결과 : <%=rsMsg %> <br />

<a href="departInst.jsp">입력 화면으로 돌아가기</a> <br />
<a href="read.jsp">입력한거 확인</a>
</body>
</html>