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
<h1>�� �� ���</h1> <!--���� �Ǵ� ������ ����.  -->
<form action="Telupdate"> <!--�̰� �����Ϸ� ���� ���� action  -->
<table border="1" style="border-collapse: collapse;">
	<tr><th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th></tr>
	<tr><td><input type="text" value="${tv1.id}" name="id"></td> <!--������� ������ ����  -->
		<td><input type="text" value="${tv1.name}" name="name"></td> <!--input�� �Է�, value�� ����� �����ϰ� �Ѵ�. -->
		<td><input type="text" value="${tv1.tel}" name="tel"></td>
		<td><input type="text" value="${tv1.d}" name="d"></td>
	<tr><td colspan="4">
		<input type="submit" value="����-�����Ϸ�"> 
		<input type ="reset" value="�������">
		</td></tr>
</table>
<input type="hidden" value="${tv1.name}" name="name2">
</form>
<a href="Telallview">[��κ���]</a>
<a href="TelDelete?name=${tv1.name}">[����]</a> <!--������ �ϳ��� ����̹Ƿ� ���������� ���� �Ѵ�. �̸��� ������ ����.  -->

</body>
</html>