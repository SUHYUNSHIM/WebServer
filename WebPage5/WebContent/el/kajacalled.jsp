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
	String name = request.getParameter("irum");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	
	
	int total = Integer.parseInt(kor)+ Integer.parseInt(eng);	
	
%>

<%="�̸��� " +name %>
<%="������ "+total  %>
[e1]<br>
�̸� ${param.name}<br>
���� ${param.kor+ param.eng}<br>

</body>
</html>