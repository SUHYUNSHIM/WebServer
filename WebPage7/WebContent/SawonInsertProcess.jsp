<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����߰�</title>
</head>
<body>
<h1>��� �߰�</h1>
<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO(); //dao ��ü �����
	
	int id = Integer.parseInt(request.getParameter("id"));
	//Insertform���� ���� �Ѱܹް�
	String name = request.getParameter("name");
	String tel= request.getParameter("tel");
	String sDate = request.getParameter("sDate");
	
	//dao�� ���ؼ� db�� insert �ϱ�
	boolean b1 = tidao.insert_nametel(id,name,tel,sDate);
	
	if(b1)
		response.sendRedirect("SawonAllView.jsp");
	else
	{%>
		<a href="SawonInsertForm.jsp">����Է� ���� - �Է�ȭ������ </a>
	<%}%>
</body>
</html>