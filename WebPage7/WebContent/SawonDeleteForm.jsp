<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� ���� ��</title>
</head>
<body>
<h1>��� ���� ��</h1>
<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO();
	String oriName = request.getParameter("name"); //a tag�� ������ ��.
	
	TelInfoVO tv2 = tidao.search_nametel(oriName); //�� ����� ������ ã�Ƽ� �����ش�.
	//ȫ�浿�� ���� ���� id,name,tel,d�Ի��� ���� db���� ������ ��ü ���·� ������.
%>

<form action="SawonDeleteProcess.jsp" method="post"></form>
<table border=2>
<tr><th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th></tr>
<tr>
	<td><%=tv2.getId() %></td>
	<td><%=tv2.getName() %></td>
	<td><%=tv2.getTel() %></td>
	<td><%=tv2.getD() %></td>
	<input type="hidden" name="name" value="<%=tv2.getName() %>">
<tr>
<td colspan=4><input type= "submit" value="��������"></td>
</tr>
</table>

<table border=0>
	<tr>
		<td><a href="SawonInsertForm.jsp">[�Է�]</a></td>
		<td><a href="SawonAllforUpdate.jsp">[����]</a></td>
		<td><a href="SawonAllView.jsp">[��κ���]</a></td>
	</tr>
</table>
</body>
</html>