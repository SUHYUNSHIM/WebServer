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
<% //SawonUpdateProcess.jsp
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();

//int id= Integer.parseInt(request.gettParamether("id"));
String name = request.getParameter("name");


boolean b1 = tidao.delete_nametel(name); //���� �۾� ����.
if(b1)
	response.sendRedirect("SawonAllView.jsp"); //���� �Ϸ�� ��ü ��� ȭ������ ���ư���.

else{%>
<a href="SawonDeleteForm.jsp">������� ���� - ����ȭ������</a>
<%}%>
</body>
</html>