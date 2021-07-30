<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원 삭제 폼</title>
</head>
<body>
<h1>사원 삭제 폼</h1>
<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO();
	String oriName = request.getParameter("name"); //a tag로 선택한 것.
	
	TelInfoVO tv2 = tidao.search_nametel(oriName); //한 사람의 정보를 찾아서 보여준다.
	//홍길동에 대한 정보 id,name,tel,d입사일 까지 db에서 꺼내서 객체 상태로 가져옴.
%>

<form action="SawonDeleteProcess.jsp" method="post"></form>
<table border=2>
<tr><th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th></tr>
<tr>
	<td><%=tv2.getId() %></td>
	<td><%=tv2.getName() %></td>
	<td><%=tv2.getTel() %></td>
	<td><%=tv2.getD() %></td>
	<input type="hidden" name="name" value="<%=tv2.getName() %>">
<tr>
<td colspan=4><input type= "submit" value="삭제하자"></td>
</tr>
</table>

<table border=0>
	<tr>
		<td><a href="SawonInsertForm.jsp">[입력]</a></td>
		<td><a href="SawonAllforUpdate.jsp">[수정]</a></td>
		<td><a href="SawonAllView.jsp">[모두보기]</a></td>
	</tr>
</table>
</body>
</html>