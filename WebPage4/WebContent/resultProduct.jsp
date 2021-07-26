<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("euc-kr"); //post의 한글처리방식
response.setCharacterEncoding("euc-kr");

//넘어오는 것은 value 값이다.
String jong1 = request.getParameter("list"); //콤보박스는 하나만

//여러개가 넘어오는 것은 어떻게?
String[] products = request.getParameterValues("choice");		

String pay = request.getParameter("pay"); //라디오버튼 하나만

%>

<body>
<%=jong1%>이군요 <br>
<%
for(String p : products){ %>
	<%=p%><br>
<%}%>
<%=pay %> 이군요 <br>
</body>
</html>