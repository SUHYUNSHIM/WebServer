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
<h1>사원 전체 명단</h1>

<%
	request.setCharacterEncoding("euc-kr"); //요청에 대한 한글 처리
	TelInfoDAO tidao = new TelInfoDAO(); //객체 생성 
	ArrayList <TelInfoVO> tiArray = tidao.getAllInfo();
	//객체.메소드
%>
</body>
</html>