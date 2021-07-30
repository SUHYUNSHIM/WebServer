<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원추가</title>
</head>
<body>
<h1>사원 추가</h1>
<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO(); //dao 객체 만들고
	
	int id = Integer.parseInt(request.getParameter("id"));
	//Insertform으로 부터 넘겨받고
	String name = request.getParameter("name");
	String tel= request.getParameter("tel");
	String sDate = request.getParameter("sDate");
	
	//dao를 통해서 db에 insert 하기
	boolean b1 = tidao.insert_nametel(id,name,tel,sDate);
	
	if(b1)
		response.sendRedirect("SawonAllView.jsp");
	else
	{%>
		<a href="SawonInsertForm.jsp">사원입력 에러 - 입력화면으로 </a>
	<%}%>
</body>
</html>