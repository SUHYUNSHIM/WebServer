<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] kwail ={"���","��","��"};
		session.setAttribute("kwail",kwail);
		/* kawil�̶�� �Ӽ����� ���� ���â�� kwail �迭�� �־��.
		name�� ����ǥ ���, value�� ���â���̸� ����ǥ ����, ���ڿ��̸� ����ǥ ���*/
				
	%>
	<a href="foreach.jsp">
	���� �ϴ� foreach ������ for(:)�� ���</a>

</body>
</html>