<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� ��ȭ��ȣ ���� ��</title>
</head>

<!--����: �������� ����� ������ ������ �Է��ϰ� �Ѱ��־� ���� ó���� ����. ��, �� �ܰ� �� �����.  -->
<!--ȫ�浿�� �Ѿ�� ���, ȫ�浿�� ������ ��� ���, �׷��� db���� ȫ�浿 ������ ������ ���. �� ��, dao�� ����ϵ� �� ����� ������ ����ϴ� �޼ҵ尡 �ʿ��ϴ�.  -->
<body>
<h1>��� ��ȭ��ȣ�� ��������</h1>
<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO();
	String oriName = request.getParameter("name");
	TelInfoVO tv2 = tidao.search_nametel(oriName);	
	//������ ȫ�浿  �� ����� ã�� �۾��� ����.
	//tv2���� ȫ�浿 ������ ���� �Ѿ�´�.
%>
<form action="SawonUpdateProcess.jsp" method="post">
<table border=2>
<tr><th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th></tr>
<tr>
	<td><%=tv2.getId() %></td>
	<td><%=tv2.getName() %></td>		<!--������� �� �ȴ�. ������ ���� ����Ϸ� ����  -->
	<td><input type="text" name="tel" value="<%=tv2.getTel() %>"></td>
	<td><%=tv2.getD() %></td>
	<input type="hidden" name="name" value="<%=tv2.getName() %>">
	<!--�̷��� �ϸ� �̸��� ��ȭ��ȣ�� �Ѿ�� getParameter()�� ���޵ȴ�.  -->
	<!--�׷��� input �±� ���� id�� �̸�, �Ի����� ������ ���ϰ� �� ���� �� �����.  -->
	<!--value�� ��´��, input�� �Է� ��� -->
</tr>
<tr><td colspan=4><input type="submit" value="��������"></td>
<!--���� ������ ���� SawonUpdateProcess.jsp�� �����.  -->
</tr>
</table>
<table border=0>
<tr>
	<td><a href="SawonInsertForm.jsp">[�Է�]</a></td>
	<td><a href="SawonDeleteForm.jsp">[����]</a></td>
	<td><a href="SawonAllView.jsp">[��κ���]</a></td>
</tr>
</table>
</form>
</body>
</html>