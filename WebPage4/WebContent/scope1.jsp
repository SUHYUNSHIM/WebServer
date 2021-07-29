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
//scope.저장메소드("속성명","속성값")
pageContext.setAttribute("page1","pagelove");
request.setAttribute("req1","resolve");
session.setAttribute("ses1", "seslove");
application.setAttribute("app1","applove");

%>
<a href="./scope2.jsp">scope2.jsp로 가볼까!</a>

</body>
</html>