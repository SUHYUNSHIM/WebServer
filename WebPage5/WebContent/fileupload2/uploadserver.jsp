<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	String bang="d:/upbang";
	MultipartRequest mr1 = new MultipartRequest(request,bang,10*1024*1024,"euc-kr",new DefaultFileRenamePolicy());
	
	String virum1 = mr1.getParameter("irum1");
	
	out.println("����� �̸���"+virum1+"�̽ñ���"+"<br>");
	out.println("��������~ ���� �ø��� �����߳׿� ");

%>
</body>
</html>