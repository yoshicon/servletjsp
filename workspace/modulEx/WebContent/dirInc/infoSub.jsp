<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	String[] pramData = {"힘세고 강한 아침", "만일 내게 묻는다면", "나는 왈도"};
	String type = request.getParameter("type");
	if(type != null){
%>

	<table border="1" bgcolor="#acacac">
		<tr>
			<th>특</th>
			<td>
<!-- 
				if(type.equals("a"))
					out.print("힘세고 강한 아침");
				else if(type.equals("b"))
					out.print("만일 내게 묻는다면");
				else if(type.equals("c"))
					out.print("나는 왈도");
 -->
				
			<%
				int x = type.charAt(0)-97;
				out.println(pramData[x]);
			%></td>
		</tr>
	</table>

<%		
	}
%>