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

<table border=2>
<tr>
<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
</tr>
<%
	for(TelInfoVO imsi:tiArray){ %>
		<tr>
			<td> <%=imsi.getId() %></td>
			<td> <%=imsi.getName() %></td>
			<td> <%=imsi.getTel() %></td>
			<td> <%=imsi.getD() %></td>
	<%}%>
<table border=0>
	<tr>
		<td><a href="SawonInsertForm.jsp">[입력]</a></td>
		<td><a href="SawonAllforUpdate.jsp">[수정]</a></td>
		<td><a href="SawonAllforDelete.jsp">[삭제]</a></td>
	</tr>
</table>
</body>
</html>