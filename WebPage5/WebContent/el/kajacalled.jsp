<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//action, post�� ���޹��� ��
	String name = request.getParameter("irum");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");

	int total = Integer.parseInt(kor)+ Integer.parseInt(eng);	
%>
[jsp]
<%="�̸��� " +name %>
<%="������ "+total  %>
[e1]<br>
�̸� ${param.name}<br> <!--���� �̸��� ��� �� �ȵǴ� ��Ȳ.  -->
���� ${param.kor+ param.eng}<br>
<!--param = request.getParameter();  -->
</body>
</html>