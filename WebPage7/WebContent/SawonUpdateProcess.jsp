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
String tel = request.getParameter("tel");
//���� ó���� ���� form���� ���� ��������� �̸��� ����� ��ȭ��ȣ�� �Ѱܹ޴´�

boolean b1 = tidao.update_nametel(tel, name);//tel, name  send
//dao�� update)nametellȣ��
//�̶� ����� ��ȭ��ȣ �� ��������� �̸��� ���ڷ� �Ѱ��ش�
//update Teltable5 set tle=? where name=?
		
//�����  b1�� true or false �� �Ѿ�´�
//out.println(b1);
if(b1)
	response.sendRedirect("SawonAllView.jsp");

else{%>
<a href="SawonUpdateForm.jsp">������� ���� - ����ȭ������</a>
<%}%>

</body>
</html>