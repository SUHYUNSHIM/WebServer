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
<h1>��� �߰�</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();

int id = Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String tel=request.getParameter("tel");
String sDate=request.getParameter("sDate");

boolean b1 = tidao.insert_nametel(id, name, tel, sDate);
			//dao��ü.�޼ҵ�()�� dao�� �ִ� �޼ҵ� ȣ��
			//insert into ....? ? ? ?����
			//error : false, no error : true ����
//no error b1���� true
if(b1)
	response.sendRedirect("SawonAllView.jsp");
else {%>
<a href="SawonInsertForm.jsp">����Է� ���� -�Է�ȭ������</a>
<%}%>
</body>
</html>