<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int age1 = Integer.parseInt(request.getParameter("age"));
out.println("나이는 "+age1);
%>

</body>
</html>