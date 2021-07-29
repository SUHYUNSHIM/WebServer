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
	Date d1  = new Date();	//ctrl+space bar
%>
<%
	out.println("<h1>날짜 출력이라고?!</h1>"+"  "+d1+"<p>"); //자바에 html을 끼어 넣었음. jsp 특징 
	out.println(request.getRequestURI()+"로 요청한  URI구만"+"<br>");
	//jsp 내장 객체: out, request, response, page, session, application, exception, config,pageContext
	//그 중에서 request는 요청 담당 내장 객체이다.
%>

</body>
</html>