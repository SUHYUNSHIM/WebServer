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


boolean b1 = tidao.delete_nametel(name); //삭제 작업 수행.
if(b1)
	response.sendRedirect("SawonAllView.jsp"); //삭제 완료시 전체 사원 화면으로 돌아간다.

else{%>
<a href="SawonDeleteForm.jsp">사원삭제 에러 - 삭제화면으로</a>
<%}%>
</body>
</html>