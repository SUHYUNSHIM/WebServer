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
pageContext.setAttribute("page1","pagelove"); //페이지 범위
request.setAttribute("req1","resolve"); //요청 범위
session.setAttribute("ses1", "seslove"); //브라우저 살아있는 동안.
application.setAttribute("app1","applove"); //WAS가 계속 가동되는 동안. 톰캣은 서버와 was 역할을 한다.

%>
<a href="./scope2.jsp">scope2.jsp로 가볼까!</a>

</body>
</html>