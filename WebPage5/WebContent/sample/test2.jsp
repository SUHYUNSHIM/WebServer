<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl if</title>
</head>
<body>
<!--request.getParameter() 대신 다른 것이 무엇일까?  param-->
<form action="kaja2.jsp">
<label for="hobby">취미는</label><br>
	<select name="chimi"> <!--값을 전달 받는 페이지에서 select는 name으로 받는다.   -->
		<option value="tennis">tennis</option>
		<option value="soccer">soccer</option>
		<option value="golf">golf</option>
	</select>
<input type="submit" value="가자">
 <!--데이터 전송방법 -> action 태그 사용- 도착지 설정, select name으로 묶고 value로 구분, submit으로 제출.  -->
</form>
</body>
</html>