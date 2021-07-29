<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>구구단 . 줄바꿈은 br 태그를 사용하시오.</h1>
<pre>
 5 x 1 = 5
 5 x 2 = 10
   :
 5 X 9 = 45
</pre>
<%
	for(int i=1;i<=9;i++){
		out.println("<h1>5"+"x"+i+"= "+5*i+"</h1>");%>
			<br>
	<%} %>

</body>
</html>