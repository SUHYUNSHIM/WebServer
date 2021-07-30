<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원 삭제</title>
</head>
<body>
<h1>삭제할 이름 선택</h1>

<!-- 
SawonAllforDelete.jsp	==> 화면에 나오는 여러 이름중에서 퇴사한 사원명을 클릭 
SawonDeleteForm.jsp		==> 삭제할 사원의 정보를 DB에서 꺼내서 모두 보여준 후 + [삭제하기]가 보이고 + 이 버튼을 누르면
SawonDeleteProcess.jsp	==> 여기서 삭제를 처리한 후 삭제가 된 자료 빼고 전체 모든 사원을 출력함
-->

<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO();
	ArrayList<TelInfoVO> tiArray = tidao.getAllInfo(); //사원 전체보기 함수
%>									<!-- 삭제 페이지에서 굳이 전체보기를 할 필요가 없음 -->
									<!-- 전체보기 페이지에서 삭제를 할 수 있다면 더 간결한 프로그램이 작성됨 -->
									
<table border=2>
	<tr>
		<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
	</tr>
	<% for (TelInfoVO tmp : tiArray) { %>
	<tr>
		<td><%=tmp.getId() %></td>
		<td><a href="SawonDeleteForm.jsp?name=<%=tmp.getName() %>">
					<%=tmp.getName() %></a></td>
		<td><%=tmp.getTel() %></td>
		<td><%=tmp.getD() %></td>
	<% } %>
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