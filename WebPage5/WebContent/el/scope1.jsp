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

pageContext.setAttribute("page1", "pagelove"); //페이지범위
 
request.setAttribute("req1", "reqlove");//요청

session.setAttribute("ses1", "seslove");//브라우저살아있는 동안 

application.setAttribute("app1", "applove");//WAS

%>

<a href="./scope2el.jsp">scope2el.jsp 한번 가볼까!!!!!!!!!</a> <%----------- --%>
</body>
</html>

