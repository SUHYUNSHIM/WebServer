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
	out.println((String)pageContext.getAttribute("page1")); //타입이 object -> 문자열로 형변환. null
	out.println((String)request.getAttribute("req1")); // 요청을 연결시킬 근거가 없으므로 null
	out.println((String)session.getAttribute("ses1")); //브라우저 살아있다. 장바구니는 session 사용. seslove
	out.println((String)application.getAttribute("app1")); //was. applove

%>
<a href="./scope3.jsp">scope3.jsp 가자</a>
</body>
</html>