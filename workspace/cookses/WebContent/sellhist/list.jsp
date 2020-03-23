<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품 리스트</title>
</head>

<body bgcolor="#666666">

<header>
	<h2>대충 목록 리스트</h2>
</header>

<div id="sangcont">
	<h2>목록</h2>
	<ul>
		<li><a href="sang01.jsp">1번 자세히 보기</a></li>
		<li><a href="sang02.jsp">2번 자세히 보기</a></li>
		<li><a href="sang03.jsp">3번 자세히 보기</a></li>
		<li><a href="sang04.jsp">4번 자세히 보기</a></li>
		<li><a href="sang05.jsp">5번 자세히 보기</a></li>
	</ul>
</div>

<div id="viewList">
	<h2>이미 본거야</h2>
<%
	Cookie[] cookies = request.getCookies();
	Cookie listCookie = null;
	if (cookies != null) {
		for (int q = 0; q < cookies.length; q++) {
			if (cookies[q].getName().equals("viewList")) {
				listCookie = cookies[q];
				break;
			}
		}
	}
	
	if (listCookie != null){
		String list = listCookie.getValue();
		list = list.substring(0, list.lastIndexOf("A"));
		String[] listArr = list.split("A");
		out.println("품번 : " + listCookie.getValue());
		out.println("<br><hr>");
		Set<String> listSet = new HashSet<String>();
		for(int q=0; q<listArr.length; q++)
			listSet.add(listArr[q]);
			
		Iterator<String> iter = listSet.iterator();
		while(iter.hasNext())
			out.println("품번 : "+iter.next()+"<br>");
	}
%>
</div>

</body>
</html>