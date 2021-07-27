<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
getHeader --> <%= request.getHeader("user-agent") %><br>
RequestURI --> <%= request.getRequestURI() %><br><!--  -->
ServletPath --> <%=request.getServletPath() %><br><!--  -->

ServerName --> <%=request.getServerName() %><br>
ServerPort --> <%=request.getServerPort() %><br>
Protocol --> <%=request.getProtocol() %><br>
Method --> <%=request.getMethod() %><br>


</body>
</html>