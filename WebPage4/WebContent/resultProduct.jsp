<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("euc-kr"); //post�� �ѱ�ó�����
response.setCharacterEncoding("euc-kr");

//�Ѿ���� ���� value ���̴�.
String jong1 = request.getParameter("list"); //�޺��ڽ��� �ϳ���

//�������� �Ѿ���� ���� ���?
String[] products = request.getParameterValues("choice");		

String pay = request.getParameter("pay"); //������ư �ϳ���

%>

<body>
<%=jong1%>�̱��� <br>
<%
for(String p : products){ %>
	<%=p%><br>
<%}%>
<%=pay %> �̱��� <br>
</body>
</html>