<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request</title>
</head>
<body>
<h2>���� �α��� �޴� ����</h2>
<%
request.setCharacterEncoding("euc-kr"); //post�� �ѱ� ó�����
response.setCharacterEncoding("euc-kr");
%>

<% //getParameter
//����("�赿��") //request�� ���� ��ü 
String id1 = request.getParameter("id1");
//�ۻ����̹Ƿ� ���ڷ� �Ѿ��
String pw1 = request.getParameter("pw1");
%>
���̵�� <%= id1 %> �̰� ��ȣ�� <%= pw1 %>�̱���<p>
</body>
</html>