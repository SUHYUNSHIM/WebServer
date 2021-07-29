<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% //선언문 
	int bb=50;
%>

<%
	int aa =30;
	out.println(aa);
%>
아하 <%=aa %>이구만 <br> <!--표현식  -->
<!--지시어 스크립트릿 표현식 선언문 -->
<br>
bb는 <%=bb %>이구만

구구단 표현식 방식으로 
<%
	for(int i=2;i<10;i++){
		for(int j=1;j<10;j++){ %>
			<%=i%> x <%=j %> = <%=i*j %><br> 
	<%	}
	}
%>

</body>
</html>