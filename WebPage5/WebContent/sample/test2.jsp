<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl if</title>
</head>
<body>
<!--request.getParameter() 대신 다른 것이 무엇일까?  -->
<form action="kaja2.jsp">
<label for="hobby">취미는</label><br>
	<select name="chimi">
		<option value="tennis">tennis</option>
		<option value="soccer">soccer</option>
		<option value="golf">golf</option>
	</select>
<input type="submit" value="가자">
</form>
</body>
</html>