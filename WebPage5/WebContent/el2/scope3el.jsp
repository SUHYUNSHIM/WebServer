<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!--나는 scope3el.jsp  -->
${pageScope.page1}<br>
${requestScope.req1 }<br>
${sessionScope.ses1 }<br>
${applicationScope.app1 }<br>

<a href="./scope3el.jsp">
여기서 브라우저 모두 닫고 scope3.jsp 재수행
이어서 WAS 내리고 scope3.jsp 재수행</a>
</body>
</html>