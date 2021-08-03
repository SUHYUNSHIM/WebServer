<%@page import="java.util.ArrayList"%>
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
<h1>삭제할 이름 선택</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
ArrayList<TelInfoVO> tiArray = tidao.getAllInfo(); //array를 반환하는 함수이기 때문.
%>
<table border=2>
<tr>
	<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
</tr>
<%
for(TelInfoVO imsi : tiArray){%> <!--전체 사원 정보를 foreach 문으로 하나씩 읽는다.  -->
<tr>
	<td><%=imsi.getId() %></td>
	<td><a href="SawonDeleteForm.jsp?name=<%=imsi.getName() %>"><%=imsi.getName() %></a></td> <!--a 태그를 사용하여 누르면 그 이름을 받아서 삭제 폼으로 이동한다. -->
	<!--john 선택 시 http://localhost:8081/WebPage7/SawonDeleteForm.jsp?name=john으로 이동 -->
	<td><%=imsi.getTel() %></td>
	<td><%=imsi.getD() %></td>
	<%} %>
</tr>
</table>
<table border=0>
<tr>
	<td><a href="SawonInsertForm.jsp">[입력]</a></td>
	<td><a href="SawonUpdateForm.jsp">[수정]</a></td>
	<td><a href="SawonAllView.jsp">[모두보기]</a></td>
</tr>
<tr>
</table>
</body>
</html>