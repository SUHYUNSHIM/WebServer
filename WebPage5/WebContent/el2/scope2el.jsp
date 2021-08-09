<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
${pageScope.page1}<br>
${requestScope.req1 }<br>
${sessionScope.ses1 }<br>
<!-- <!-out.println((String)session.getAttribute("ses1")); el의 표기법과 jsp 표기법의 차이 --> 
${applicationScope.app1 }<br>

<a href="./scope3el.jsp">scope3el.jsp 한번 가볼까
</body>
</html>