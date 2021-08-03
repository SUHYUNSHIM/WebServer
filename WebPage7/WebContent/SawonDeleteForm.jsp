<%@page import="telinfoVO.TelInfoVO"%>
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
<h1>사원 삭제 폼</h1>
<%
	request.setCharacterEncoding("euc-kr"); /*eclipse 자체 웹 화면에서는 한글 이름 선택 시 에러가 난다. 다른 방법으로는 server.xml 수정 방법. but 일단 현상태에서는 크롬에서는 문제없이 돌아감.  */
	TelInfoDAO tidao = new TelInfoDAO();
	String oriName = request.getParameter("name");
	TelInfoVO tv2 = tidao.search_nametel(oriName);	
%>
<form action="SawonDeleteProcess.jsp" method="post">
<table border=2>
<tr><th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th></tr>
<tr> <!--표 형식 출력  -->
	<td><%=tv2.getId() %></td>
	<td><%=tv2.getName() %></td>
	<td><%=tv2.getTel() %></td>
	<td><%=tv2.getD() %></td>
	<input type="hidden" name="name" value="<%=tv2.getName() %>">
	
</tr>
<tr><td colspan=4><input type="submit" value="삭제하자"></td>
</tr>
</table>
<table border=0>
<tr>
	<td><a href="SawonInsertForm.jsp">[입력]</a></td>
	<td><a href="SawonUpdateForm.jsp">[수정]</a></td>
	<td><a href="SawonAllView.jsp">[모두보기]</a></td>
</tr>
</table>
</form>
</body>
</html>