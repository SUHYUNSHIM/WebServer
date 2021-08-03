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
	//action, post로 전달받은 것
	String name = request.getParameter("irum");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");

	int total = Integer.parseInt(kor)+ Integer.parseInt(eng);	
%>

<%="이름은 " +name %>
<%="총합은 "+total  %>
[e1]<br>
이름 ${param.name}<br>
총점 ${param.kor+ param.eng}<br>

</body>
</html>