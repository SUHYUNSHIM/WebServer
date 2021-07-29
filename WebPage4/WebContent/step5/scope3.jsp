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
<a href="./scope3.jsp">여기서 브라우저를 모두 닫고 scope3.jsp 재수행
	이어서 WAS 내리고, scope3.jsp 재수행</a>
</body>
<!--null null null applove 브라우저를 모두 닫고 재수행시  -->
<!--null null null null was 내리고 다시 올렸을 때  -->
<!--모든 속성값은 메모리에 저장된다.  -->
</html>