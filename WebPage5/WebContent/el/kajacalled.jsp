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
[jsp]
<%="이름은 " +name %>
<%="총합은 "+total  %>
[e1]<br>
이름 ${param.name}<br> <!--현재 이름이 출력 잘 안되는 상황.  -->
총점 ${param.kor+ param.eng}<br>
<!--param = request.getParameter();  -->
</body>
</html>