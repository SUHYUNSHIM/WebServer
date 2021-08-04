<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원 전체 보기(getAllinfo.jsp)</title>
</head>
<body>
<h1>사원 전체 보기</h1>
<hr><br>
<table border=1>
	<tr>
		<td colspan=4>
		<form action="getAllInfo.do">
			<input type="submit" value="모두보기">
		</form>
		</td>
		</tr>
	<tr>
		<td>사번</td>
		<td>이름</td>
		<td>전화번호</td>
		<tr>입사일</tr>
	</tr>
	<!-- java의 for문과 같음 -->
	<c:forEach var="vo1" items="${alist1 }">
	<tr>
		<td>${vo1.id}</td>
		<td><a href="sawonSearchOne.do?name=${vo1.name} }">${vo1.name}</a></td>
		<td>${vo1.tel}</td>
		<td>${vo1.d}</td>
	</tr>
	</c:forEach>
	</table>
	
	<table border=0>
	<tr>		<!--입력은 여기서  -->
		<td><a href="sawonInsertForm.jsp">[입력]</a></td>
		<td><a href="getAllInfo.jsp">[모두보기]</a></td>
	</tr>
	</table>	
</body>
</html>