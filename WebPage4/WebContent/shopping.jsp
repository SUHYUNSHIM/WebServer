<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>requests</title>
</head>
<body>
<h2>뭘 살까?</h2>
<%
	String vid1 = request.getParameter("id1");
	String vpw1 = request.getParameter("pw1");

%>
아하 id는 <%=vid1 %>이고 암호는 <%=vpw1 %>이군요<p>
<%
session.setAttribute("sid1",vid1);
session.setAttribute("spw1",vpw1);
%>
가방 쇼핑은 <a href="bag.jsp">여기</a>를 누르세요<br>
구두 쇼핑은 <a href="shoes.jsp">여기</a>를 누르세요<br>
</body>
</html>