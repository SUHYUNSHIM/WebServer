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

<% //SawonUpdateProcess.jsp
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();

//int id= Integer.parseInt(request.gettParamether("id"));
String name = request.getParameter("name");
String tel = request.getParameter("tel");
//수정 처리를 위해 form으로 부터 수정대상자 이름과 변경될 전화번호를 넘겨받는다

boolean b1 = tidao.update_nametel(tel, name);//tel, name  send
//dao의 update)nametell호출
//이때 변경될 전화번호 및 수정대상자 이름을 인자로 넘겨준다
//update Teltable5 set tle=? where name=?
		
//결과는  b1에 true or false 가 넘어온다
//out.println(b1);
if(b1)
	response.sendRedirect("SawonAllView.jsp");

else{%>
<a href="SawonUpdateForm.jsp">사원수정 에러 - 수정화면으로</a>
<%}%>

</body>
</html>