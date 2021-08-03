<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>한 명 출력</h1> <!--수정 또는 삭제가 가능.  -->
<form action="Telupdate"> <!--이건 수정하러 가기 위한 action  -->
<table border="1" style="border-collapse: collapse;">
	<tr><th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th></tr>
	<tr><td><input type="text" value="${tv1.id}" name="id"></td> <!--입출력이 가능한 상태  -->
		<td><input type="text" value="${tv1.name}" name="name"></td> <!--input은 입력, value는 출력을 가능하게 한다. -->
		<td><input type="text" value="${tv1.tel}" name="tel"></td>
		<td><input type="text" value="${tv1.d}" name="d"></td>
	<tr><td colspan="4">
		<input type="submit" value="가자-수정하러"> 
		<input type ="reset" value="수정취소">
		</td></tr>
</table>
<input type="hidden" value="${tv1.name}" name="name2">
</form>
<a href="Telallview">[모두보기]</a>
<a href="TelDelete?name=${tv1.name}">[삭제]</a> <!--삭제는 하나의 계산이므로 서블릿으로 가야 한다. 이름을 가지고 간다.  -->

</body>
</html>