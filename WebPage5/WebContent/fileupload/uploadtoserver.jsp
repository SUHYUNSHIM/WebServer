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
<h2>upload����</h2>
<%
	String bang="d:/upbang";
	//cos.jar�� ���� ���� ���ε� Ŭ����. 
	//���� ���ε�Ǵ� ����
	MultipartRequest mr1 = new MultipartRequest(request, bang, 10*1024*1024,"euc-kr",new DefaultFileRenamePolicy());
																					//���� �̸��� ������ �ִٸ� �ٸ� �̸����� �ڵ������ ����ȴ�.
%>

</body>
</html>