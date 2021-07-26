<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request</title>
</head>
<body>
<h2>나는 로그인 받는 서버</h2>
<%
request.setCharacterEncoding("euc-kr"); //post의 한글 처리방식
response.setCharacterEncoding("euc-kr");
%>

<% //getParameter
//변수("김동영") //request는 내장 객체 
String id1 = request.getParameter("id1");
//글상자이므로 문자로 넘어옴
String pw1 = request.getParameter("pw1");
%>
아이디는 <%= id1 %> 이고 암호는 <%= pw1 %>이구만<p>
</body>
</html>