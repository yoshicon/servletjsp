<%@page import="java.util.List"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.DDIV"%>
<%@page import="com.babo.DepartmentsDAO"%>
<%@page import="com.babo.DepartmentsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");

	DepartmentsDAO dao = new DepartmentsDAO();
	List<DepartmentsVO> list = dao.selectAll();
	int listCnt = list.size();
	int dataCnt = dao.selectCnt();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>부서 목록 조회</title>
</head>

<body bgcolor="#666666">
<h1>목록</h1> 
<h3>자료 갯수 : <%=dataCnt %></h3>
<hr />
<table>
	<tr>
		<th>부서코드</th>
		<th>부서이름</th>
		<th>관리자님</th>
		<th>위치코드</th>
	</tr>
	
<% for(int q=0; q<listCnt; q++){ %>	

	<tr>
		<td><%= list.get(q).getDepartId() %></td>
		<td><%= list.get(q).getDepartmentName() %></td>
		<td><%= list.get(q).getManaId() %></td>
		<td><%= list.get(q).getLocId() %></td>
	</tr>
<% } %>

</table>
<a href="departInst.jsp">메인으로 돌아가기</a>
</body>
</html>