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
out.println((String)pageContext.getAttribute("page1"));
out.println((String)request.getAttribute("req1"));
out.println((String)session.getAttribute("ses1"));
out.println((String)application.getAttribute("app1"));
%>
<a href="./scope3.jsp">���⼭ �������� ��� �ݰ� scope3.jsp �����
	�̾ WAS ������, scope3.jsp �����</a>
</body>
<!--null null null applove �������� ��� �ݰ� ������  -->
<!--null null null null was ������ �ٽ� �÷��� ��  -->
<!--��� �Ӽ����� �޸𸮿� ����ȴ�.  -->
</html>