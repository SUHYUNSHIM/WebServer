<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>��� ��ü ����</h1>

<%
	request.setCharacterEncoding("euc-kr"); //��û�� ���� �ѱ� ó��
	TelInfoDAO tidao = new TelInfoDAO(); //��ü ����. ��ü �����ϴ� ����? �ٸ� ���� �ִ� class�� ����ϱ� ����.
	ArrayList <TelInfoVO> tiArray = tidao.getAllInfo(); //��ü ����� ����. dao.
									//��ü.�޼ҵ�
	//���� �� ���� �ٽ� array�� ����.
%>

<table border=2>
<tr>
<th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th>
</tr>
<%
	for(TelInfoVO imsi:tiArray){ %>
		<tr>
			<td> <%=imsi.getId() %></td>
			<td> <%=imsi.getName() %></td>
			<td> <%=imsi.getTel() %></td>
			<td> <%=imsi.getD() %></td>
	<%}%>
<table border=0>
	<tr>
		<td><a href="SawonInsertForm.jsp">[�Է�]</a></td>
		<td><a href="SawonAllforUpdate.jsp">[����]</a></td>
		<td><a href="SawonAllforDelete.jsp">[����]</a></td>
	</tr>
</table>


</body>
</html>