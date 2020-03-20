<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>


<html lang="ko">
<head>
<meta charset="UTF-8">
<title>info</title>
</head>

<body bgcolor="#666666">
<table border="1" bgcolor="#acacac">
	<tr>
		<th>품펀</th>
		<td>sam-572</td>
	</tr>
	
	<tr>
		<th>가격</th>
		<td>10000원</td>
	</tr>
</table>
<hr />

<jsp:include page="infoSub.jsp" flush="false">
	<jsp:param value="b" name="type"/>
</jsp:include>

</body>
</html>