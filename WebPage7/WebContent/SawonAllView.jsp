<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>��� ��ü ���</h1>

<%
	request.setCharacterEncoding("euc-kr"); //��û�� ���� �ѱ� ó��
	TelInfoDAO tidao = new TelInfoDAO(); //��ü ����. ��ü �����ϴ� ����? �ٸ� ���� �ִ� class�� ����ϱ� ����.
	ArrayList <TelInfoVO> tiArray = tidao.getAllInfo(); //��ü ����� ����. dao.
									//��ü.�޼ҵ�
	//���� �� ���� �ٽ� array�� ����.
%>
</body>
</html>