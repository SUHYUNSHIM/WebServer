<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<pre>
원래는 이 화면이 출력되는 것인데
변신을 해서 다른 화면이 출력된다.
</pre>
<%
	response.sendRedirect("test3_1.jsp");
%>
로그인 하고 왔어 -안 했어- 다시 로그인화면으로 보내자
</body>
</html>