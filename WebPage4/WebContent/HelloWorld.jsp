<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

body가 있지만 파일 확장자는 .jsp <br>
오늘 날짜를 출력해보자(자바 문법을 script하여) <br>
html에 자바를 끼워 넣고 있는 중  <br>
<%	
	Date d1  = new Date();
%>
<%
	out.println("<h1>날짜 출력이라고?!</h1>"+"  "+d1+"<p>");
	out.println(request.getRequestURI()+"로 요청한  URI구만"+"<br>");
%>

</body>
</html>