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
	
	out.println("사용자 이름은"+virum1+"이시구요"+"<br>");
	out.println("축하축하~ 파일 올리기 성공했네요 ");

%>
</body>
</html>