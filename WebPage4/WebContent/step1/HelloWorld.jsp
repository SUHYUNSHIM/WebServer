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

body�� ������ ���� Ȯ���ڴ� .jsp <br>
���� ��¥�� ����غ���(�ڹ� ������ script�Ͽ�) <br>
html�� �ڹٸ� ���� �ְ� �ִ� ��  <br>
<%	
	Date d1  = new Date();	//ctrl+space bar
%>
<%
	out.println("<h1>��¥ ����̶��?!</h1>"+"  "+d1+"<p>"); //�ڹٿ� html�� ���� �־���. jsp Ư¡ 
	out.println(request.getRequestURI()+"�� ��û��  URI����"+"<br>");
	//jsp ���� ��ü: out, request, response, page, session, application, exception, config,pageContext
	//�� �߿��� request�� ��û ��� ���� ��ü�̴�.
%>

</body>
</html>