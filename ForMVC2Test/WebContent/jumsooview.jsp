<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>������</h3>
<h5>���� ���� <%=request.getParameter("kor") %></h5>
<h5>���� ���� <%=request.getParameter("eng") %>�� ������</h5>
<h5>${sum} �Դϴ�</h5> <!--getparameter�� �ϸ� nll�� ���´�. el�θ� ���� ����� �´�. ���� �͵� param.kor, param.eng �̷� ������ �ϸ� ������ �Ʒ� ���� param �Ⱥ��̰� , ${sum}�̷��Ը�  -->
</body>
</html>