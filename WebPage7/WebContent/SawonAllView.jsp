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
	TelInfoDAO tidao = new TelInfoDAO(); //객체 생성. 객체 생성하는 이유? 다른 곳에 있는 class를 사용하기 위해.
	ArrayList <TelInfoVO> tiArray = tidao.getAllInfo(); //전체 출력을 위해. dao.
									//객체.메소드
	//가져 온 것을 다시 array로 받음.
%>
</body>
</html>