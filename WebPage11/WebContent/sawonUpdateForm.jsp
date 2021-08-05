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
		<!--아래 문장은 입력과 출력이 다 된다. 수정이 된다.  -->
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
<!--jsp 로도 좌꺽새= request.contextPath() 우꺽새 이렇게 표현할 수 있다. 위의 방식은 프로젝트 명이 변경되어도 소스 수정을 하지 않아도 되기 때문에 사용했다. -->
</body>
</html>