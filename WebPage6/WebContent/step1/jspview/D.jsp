<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>${param.irum }���� ������ ${param.jum }�� �̱���!</h1>
<h1>�׷��ϱ� ${param.irum }���� D����������~</h1>

�׸��� <%=request.getAttribute("suhyun") %>��!
<a href="test1.html">���� �Է�ȭ������ ���ϴ�</a>
</body>
</html>