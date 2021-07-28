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
<h2>upload하자</h2>
<%
	String bang="d:/upbang";
	//cos.jar가 가진 파일 업로드 클래스. 
	//실제 업로드되는 문장
	MultipartRequest mr1 = new MultipartRequest(request, bang, 10*1024*1024,"euc-kr",new DefaultFileRenamePolicy());
																					//같은 이름의 파일이 있다면 다른 이름으로 자동저긍로 저장된다.
%>

</body>
</html>