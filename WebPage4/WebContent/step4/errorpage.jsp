<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
<%response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<pre>
다음과 같은 에러가 발생했습니다
계속 에러가 발생되면 상담원에게 전화주시기 바랍니다
전화번호는 02-0000-0000입니다
</pre>

<hr>
에러 내용은 <h3> <%=exception.getMessage() %></h3>


</body>
</html>