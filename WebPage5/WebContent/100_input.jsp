<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ���</title>
</head>
<body>       <!-- 100_input.jsp -->
	<hr>
	<h2>���θ���ǰ�� �����ϰ� ������ �Է��� �� ��ٱ��Ͽ� ��������</h2>
	<form action="100_output.jsp">
	<select name="sangpum">
	   <option value="bag">����(1�� 50000)</option>
	   <option value="koodoo">����(1�� 70000)</option>
	   <option value="tie">��Ÿ��(1�� 15000)</option>
	</select>
	<input type="text" name=cnt size=3>��
	<br><br>
	<input type="submit" value = "��ٱ��ϴ��">
	<input type="reset" value = " �Ȼ췡~~~">
	</form>
</body>
</html>




