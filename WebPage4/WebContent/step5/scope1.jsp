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
//scope.����޼ҵ�("�Ӽ���","�Ӽ���")
pageContext.setAttribute("page1","pagelove"); //������ ����
request.setAttribute("req1","resolve"); //��û ����
session.setAttribute("ses1", "seslove"); //������ ����ִ� ����.
application.setAttribute("app1","applove"); //WAS�� ��� �����Ǵ� ����. ��Ĺ�� ������ was ������ �Ѵ�.

%>
<a href="./scope2.jsp">scope2.jsp�� ������!</a>

</body>
</html>