<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>사원 한 명 보기</h1>
<hr>
<form action="sawonUpdate.do?sname=${stv.name}">
<table border=1>
	<tr>
		<td>사번</td>
		<td>이름</td>
		<td>전화번호</td>
		<td>입사일</td>
	</tr>
	<tr>
		<td><input type="text" name="id" value="${stv.id }"></td>
		<td><input type="text" name="name" value="${stv.name }"></td>
		<td><input type="tel" name="tel" value="${stv.tel }"></td>
		<td><input type="date" name="d" value="${stv.d }"></td>
		<input type="hidden" name="sname" value="${stv.name }">
	</tr>
	<tr>
		<td colspan=4>
		<input type= "submit" value="수정">
		<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
<!--el 언어  -->
<a href="${pageContext.request.contextPath}/getAllInfo.jsp">[모두보기]</a>
<a href="sawonDelete.do?name=${stv.name }">[삭제]</a>

</body>
</html>