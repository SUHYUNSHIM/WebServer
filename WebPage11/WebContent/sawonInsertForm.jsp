<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 입력하기</title>
</head>
<body>

	<h1>사원 추가하기</h1>
<form action="sawonInsertForm.do">  <!-- //.do. 총 매니저로 넘어가도록  -->
	<table border=1>
		<tr>
			<td>사번</td>
			<td><input type="text" name="sabun" autofocus required></td> <!-- //입력해야만 넘어간다. -->
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="irum" required></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="tel" name="tel" placeholder="010-1234-1234"></td>
		</tr>
		<tr>
			<td>입사일</td>
			<td><input type="date" name="date"></td>
		</tr>
	</table>
	<input type="submit" value="추가하기">
	<input type="reset" value="다시작성">
	<a href="getAllInfo.jsp"><input type="button" value="모두보기"></a>
</form>
</body>
</html>