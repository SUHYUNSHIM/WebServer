<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl if</title>
</head>
<body>
<!--request.getParameter() ��� �ٸ� ���� �����ϱ�?  param-->
<form action="kaja2.jsp">
<label for="hobby">��̴�</label><br>
	<select name="chimi"> <!--���� ���� �޴� ���������� select�� name���� �޴´�.   -->
		<option value="tennis">tennis</option>
		<option value="soccer">soccer</option>
		<option value="golf">golf</option>
	</select>
<input type="submit" value="����">
 <!--������ ���۹�� -> action �±� ���- ������ ����, select name���� ���� value�� ����, submit���� ����.  -->
</form>
</body>
</html>