<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>

 <%

pageContext.setAttribute("page1", "pagelove"); //����������
 
request.setAttribute("req1", "reqlove");//��û

session.setAttribute("ses1", "seslove");//����������ִ� ���� 

application.setAttribute("app1", "applove");//WAS

%>

<a href="./scope2el.jsp">scope2el.jsp �ѹ� ������!!!!!!!!!</a> <%----------- --%>
</body>
</html>

