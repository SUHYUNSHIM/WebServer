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
<h1>사원 추가</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();

int id = Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String tel=request.getParameter("tel");
String sDate=request.getParameter("sDate");

boolean b1 = tidao.insert_nametel(id, name, tel, sDate);
			//dao객체.메소드()로 dao에 있는 메소드 호출
			//insert into ....? ? ? ?진행
			//error : false, no error : true 진행
//no error b1에는 true
if(b1)
	response.sendRedirect("SawonAllView.jsp");
else {%>
<a href="SawonInsertForm.jsp">사원입력 에러 -입력화면으로</a>
<%}%>
</body>
</html>