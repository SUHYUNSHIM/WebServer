<%@page import="java.util.Calendar"%>
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

<% //getParameter. 자바 문법.
//변수("김동영") //request는 내장 객체. 입력을 받으면 그 객체를 받아오는.
String id1 = request.getParameter("id1"); //객체.메소드. "id1"은 태그 이름이다. id1이라는 변수에 그 값을 넣었다.
//글상자이므로 문자로 넘어옴
String pw1 = request.getParameter("pw1");
String age1 = request.getParameter("age1");

int b_year = Calendar.getInstance().get(Calendar.YEAR) - Integer.parseInt(age1)+1;
%>
아이디는 <%= id1 %> 이고 암호는 <%= pw1 %>이구만<p> <!--표현식  -->
태어난 년도는 <%=b_year %>년 이네.
</body>
</html>