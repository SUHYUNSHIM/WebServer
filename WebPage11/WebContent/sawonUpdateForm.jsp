<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>��� �� �� ����</h1>
<hr>
<form action="sawonUpdate.do?sname=${stv.name}">
<table border=1>
	<tr>
		<td>���</td>
		<td>�̸�</td>
		<td>��ȭ��ȣ</td>
		<td>�Ի���</td>
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
		<input type= "submit" value="����">
		<input type="reset" value="���">
		</td>
	</tr>
</table>
</form>
<!--el ���  -->
<a href="${pageContext.request.contextPath}/getAllInfo.jsp">[��κ���]</a>
<a href="sawonDelete.do?name=${stv.name }">[����]</a>

</body>
</html>