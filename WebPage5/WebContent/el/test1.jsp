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
	double kab=37.8;
	String kab2 = null;
	
%>
<%="�´�" %>
${"�´�"}
${"kab"} <!--�ȳ��´�.  -->
<br>
${"���� ���ϴµ� e1 �װ� �� �ű⼭ ����" }<br>
${"e1"}�� �� �����ؼ� ������ ���δ� �ؾ���<br>
${"���� e1�� ���� ����" }<br>

${100} ${100+200} ${100 >2} ${200.35} ${10%3}<br>
${false} ${empty kab2} ${empty ""} ${empty "a"} ${null}  <!--null�� �����Ѵ�.  -->
	���� ǥ���� ������<br> 
</body>
</html>