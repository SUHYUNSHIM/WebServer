<%@page import="java.util.Calendar"%>
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

<% //getParameter. �ڹ� ����.
//����("�赿��") //request�� ���� ��ü. �Է��� ������ �� ��ü�� �޾ƿ���.
String id1 = request.getParameter("id1"); //��ü.�޼ҵ�. "id1"�� �±� �̸��̴�. id1�̶�� ������ �� ���� �־���.
//�ۻ����̹Ƿ� ���ڷ� �Ѿ��
String pw1 = request.getParameter("pw1");
String age1 = request.getParameter("age1");

int b_year = Calendar.getInstance().get(Calendar.YEAR) - Integer.parseInt(age1)+1;
%>
���̵�� <%= id1 %> �̰� ��ȣ�� <%= pw1 %>�̱���<p> <!--ǥ����  -->
�¾ �⵵�� <%=b_year %>�� �̳�.
</body>
</html>