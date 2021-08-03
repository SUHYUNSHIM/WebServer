<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String irum=request.getParameter("irum");
	String tel=request.getParameter("tel");///전화번호를 특정 암호로 할 예정. "bimil"이면 관리자 모드.
	
	/*아래에서 다시 다른 jsp로 forward할 때를 대비하여*/
	session.setAttribute("sirum",irum); //받는 것은 sessionScope.sirum으로 받는다.
	session.setAttribute("stel", tel);
	/*session.setAttribute("ses1", "seslove"); //브라우저살아있는 동안   */
	/*여러 페이지가 넘어갔을 때 처음 사람이 그대로 계속 진행되는 건지를 아는 가장 좋은 방법은 session.  */
%>
<!---=======================================================================  -->
<% if(tel.equals("bimil")){ %> <!--문자열 비교, 자바의 기존 문법 그대로, equals 사용.  -->
		<jsp:forward page="impossible.jsp"/> <!--action tag. xml 문법형식 사용 ***********forward는 방향을 바꾸는 것이다.-->
	<%} else{%>
	<jsp:forward page="homepage.jsp"/>
	<%} %>

</body>
</html>