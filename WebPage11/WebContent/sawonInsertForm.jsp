<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>��� �Է��ϱ�</title>
</head>
<body>

	<h1>��� �߰��ϱ�</h1>
<form action="sawonInsertForm.do">  <!-- //.do. �� �Ŵ����� �Ѿ����  -->
	<table border=1>
		<tr>
			<td>���</td>
			<td><input type="text" name="sabun" autofocus required></td> <!-- //�Է��ؾ߸� �Ѿ��. -->
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="irum" required></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input type="tel" name="tel" placeholder="010-1234-1234"></td>
		</tr>
		<tr>
			<td>�Ի���</td>
			<td><input type="date" name="date"></td>
		</tr>
	</table>
	<input type="submit" value="�߰��ϱ�">
	<input type="reset" value="�ٽ��ۼ�">
	<a href="getAllInfo.jsp"><input type="button" value="��κ���"></a>
</form>
</body>
</html>