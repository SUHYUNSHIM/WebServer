<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>수정할 이름 선택</h1><!-- 나 SawonAllforUpdate.jsp -->
<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO();
	ArrayList<TelInfoVO> tiArray = tidao.getAllInfo();
%>

<table border=2>
	<tr>
		<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
	</tr>
	<%
	for(TelInfoVO imsi : tiArray){%>
	<tr>
		<td><%=imsi.getId() %></td>
		<td><a href="SawonUpdateForm.jsp?name=<%=imsi.getName() %>"> <%=imsi.getName() %></a></td>
		<td><%=imsi.getTel() %></td>
		<td><%=imsi.getD() %></td>
	<%} %>
	</tr>
	<tr>
</table>
<table border=0>
<tr>
	<td><a href="SawonInsertForm.jsp">[입력]</a></td>
	<td><a href="SawonDeleteForm.jsp">[삭제]</a></td>
	<td><a href="SawonAllView.jsp">[모두보기]</a></td>
</tr>
</table>
</body>
</html>