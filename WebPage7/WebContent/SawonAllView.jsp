<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>사원 전체 명단</h1> <!--시작화면  -->
<%
	request.setCharacterEncoding("euc-kr"); //postt
	TelInfoDAO tidao = new TelInfoDAO(); //객체 생성
	ArrayList<TelInfoVO> tiArray = tidao.getAllInfo();
									//객체.메소드
%>
<table border=2>
	<tr>
		<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
	</tr>
	<% for(TelInfoVO imsi : tiArray){ %>
	<tr>
		<td> <%=imsi.getId() %></td>
		<td><%=imsi.getName() %></td>
		<td><%=imsi.getTel() %></td>
		<td><%=imsi.getD() %></td>
	<%}%></tr>
	</table>
	<table border=0>
		<tr>
			<td><a href="SawonInsertForm.jsp">[입력]</a></td>
			<td><a href="SawonAllforUpdate.jsp">[수정]</a></td>
			<td><a href="SawonAllforDelete.jsp">[삭제]</a></td>
		</tr>
	</table>
</body>
</html>