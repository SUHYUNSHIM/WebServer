<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ���</title>
</head>
<body>
	<hr>
	<h2>���θ� ��ǰ�� �����ϰ� ������ �Է��� �� ��ٱ��Ͽ� ��������</h2>
	<form action="output.jsp">
	<select name="product">
		<option value="bag">����(1�� 5000��)</option>
		<option value="shoes">����(1�� 7000��)</option>
		<option value="tie">��Ÿ��(1�� 15000��)	</option>
	</select>
	<input type="text" name= "cnt" size=3>��
	<br><br>
	<input type="submit" value="��ٱ��� ���">
	<input type="reset" value=" �� �췡">
	</form>

</body>
</html>