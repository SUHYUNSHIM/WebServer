<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>bags</title>
</head>
<body>
<h2>���� ��������</h2>
<%
	//�� ���������� ���� session �Ӽ��� ���� �о 
	String sid1 = (String)session.getAttribute("sid1"); //id
	String spw1= (String)session.getAttribute("spw1"); //pw

	if(!sid1.equals("babo") || !spw1.equals("ondal")){
		out.println("<h2>id ��ȣ �Է¿����Դϴ� �α���ȭ������ ���ϴ�</h2>");	
		out.println("<a href='index.html'>����</a>�� ��������<br>");
	}else{ //�α��� �Ͽ�����, ��ǰ ��� ���ͼ� ��� �Ѵ�.
		out.println("<img src='./images/bags.jpg'>");
	}
%> <br><br>


</body>
</html>