<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� ����</title>
</head>
<body>
<h1>������ �̸� ����</h1>

<!-- 
SawonAllforDelete.jsp	==> ȭ�鿡 ������ ���� �̸��߿��� ����� ������� Ŭ�� 
SawonDeleteForm.jsp		==> ������ ����� ������ DB���� ������ ��� ������ �� + [�����ϱ�]�� ���̰� + �� ��ư�� ������
SawonDeleteProcess.jsp	==> ���⼭ ������ ó���� �� ������ �� �ڷ� ���� ��ü ��� ����� �����
-->

<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO();
	ArrayList<TelInfoVO> tiArray = tidao.getAllInfo(); //��� ��ü���� �Լ�
%>									<!-- ���� ���������� ���� ��ü���⸦ �� �ʿ䰡 ���� -->
									<!-- ��ü���� ���������� ������ �� �� �ִٸ� �� ������ ���α׷��� �ۼ��� -->
									
<table border=2>
	<tr>
		<th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th>
	</tr>
	<% for (TelInfoVO tmp : tiArray) { %>
	<tr>
		<td><%=tmp.getId() %></td>
		<td><a href="SawonDeleteForm.jsp?name=<%=tmp.getName() %>">
					<%=tmp.getName() %></a></td>
		<td><%=tmp.getTel() %></td>
		<td><%=tmp.getD() %></td>
	<% } %>
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