<%@page import="java.util.ArrayList"%>
<%@page import="telinfoVO.TelInfoVO"%>
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
<h1>������ �̸� ����</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
ArrayList<TelInfoVO> tiArray = tidao.getAllInfo();
%>
<table border=2>
<tr>
	<th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th>
</tr>
<%
for(TelInfoVO imsi : tiArray){%>
<tr>
	<td><%=imsi.getId() %></td>
	<td><a href="SawonDeleteForm.jsp?name=<%=imsi.getName() %>"><%=imsi.getName() %></a></td>
	<td><%=imsi.getTel() %></td>
	<td><%=imsi.getD() %></td>
	<%} %>
</tr>
</table>
<table border=0>
<tr>
	<td><a href="SawonInsertForm.jsp">[�Է�]</a></td>
	<td><a href="SawonUpdateForm.jsp">[����]</a></td>
	<td><a href="SawonAllView.jsp">[��κ���]</a></td>
</tr>
<tr>
</table>
</body>
</html>