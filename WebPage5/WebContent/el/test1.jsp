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
	double kab=37.8;
	String kab2 = null;
	
%>
<%="온달" %>
${"온달"}
${"kab"} <!--안나온다.  -->
<br>
${"형이 말하는데 e1 네가 왜 거기서 나와" }<br>
${"e1"}은 참 간단해서 좋지만 공부는 해야해<br>
${"다음 e1의 답은 뭘까" }<br>

${100} ${100+200} ${100 >2} ${200.35} ${10%3}<br>
${false} ${empty kab2} ${empty ""} ${empty "a"} ${null}  <!--null은 무시한다.  -->
	등의 표현이 가능해<br> 
</body>
</html>