<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� ��ü ����(getAllinfo.jsp)</title>
</head>
<body>
<h1>��� ��ü ����</h1>
<hr><br>
<table border=1>
	<tr>
		<td colspan=4>
		<form action="getAllInfo.do">
			<input type="submit" value="��κ���">
		</form>
		</td>
		</tr>
	<tr>
		<td>���</td>
		<td>�̸�</td>
		<td>��ȭ��ȣ</td>
		<tr>�Ի���</tr>
	</tr>
	<!-- java�� for���� ���� -->
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
	<tr>		<!--�Է��� ���⼭  -->
		<td><a href="sawonInsertForm.jsp">[�Է�]</a></td>
		<td><a href="getAllInfo.jsp">[��κ���]</a></td>
	</tr>
	</table>	
</body>
</html>