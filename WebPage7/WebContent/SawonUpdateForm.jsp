<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원 전화번호 수정 폼</title>
</head>

<!--수정: 수정폼을 만들고 수정할 내용을 입력하고 넘겨주어 수정 처리가 진행. 즉, 한 단계 더 만든다.  -->
<!--홍길동이 넘어온 경우, 홍길동의 정보를 모두 출력, 그래서 db에서 홍길동 정보를 꺼내서 출력. 이 때, dao를 사용하되 한 사람의 정보를 출력하는 메소드가 필요하다.  -->
<body>
<h1>사원 전화번호를 수정하자</h1>
<%
	request.setCharacterEncoding("euc-kr");
	TelInfoDAO tidao = new TelInfoDAO();
	String oriName = request.getParameter("name");
	TelInfoVO tv2 = tidao.search_nametel(oriName);	
	//선택한 홍길동  한 사람을 찾는 작업이 시작.
	//tv2에는 홍길동 정보가 전부 넘어온다.
%>
<form action="SawonUpdateProcess.jsp" method="post">
<table border=2>
<tr><th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th></tr>
<tr>
	<td><%=tv2.getId() %></td>
	<td><%=tv2.getName() %></td>		<!--입출력이 다 된다. 수정한 것을 출력하러 가는  -->
	<td><input type="text" name="tel" value="<%=tv2.getTel() %>"></td>
	<td><%=tv2.getD() %></td>
	<input type="hidden" name="name" value="<%=tv2.getName() %>">
	<!--이렇게 하면 이름과 전화번호는 넘어가서 getParameter()에 전달된다.  -->
	<!--그러나 input 태그 없는 id와 이름, 입사일은 수정을 못하게 한 것이 잘 적용됨.  -->
	<!--value는 출력담당, input은 입력 담당 -->
</tr>
<tr><td colspan=4><input type="submit" value="수정하자"></td>
<!--실제 수정을 위해 SawonUpdateProcess.jsp를 만든다.  -->
</tr>
</table>
<table border=0>
<tr>
	<td><a href="SawonInsertForm.jsp">[입력]</a></td>
	<td><a href="SawonDeleteForm.jsp">[삭제]</a></td>
	<td><a href="SawonAllView.jsp">[모두보기]</a></td>
</tr>
</table>
</form>
</body>
</html>