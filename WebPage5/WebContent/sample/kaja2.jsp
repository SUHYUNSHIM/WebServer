<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
			<!--test2.jsp에서 select의 name인 chimi로 request.getParameter() 대신 param으로 받았다.  -->
	<!--if 연습, el+jstl 융합  -->		
	<c:if test="${param.chimi =='tennis'}"> <!--getParameter("chimi")  -->
		<div> 아하 테니스</div>
	</c:if> <!--자바로 치면 if 1형식  -->
	<c:if test="${param.chimi =='soccer'}">
		<div> 아하 축구</div>
	</c:if> 
	<c:if test="${param.chimi == 'golf'}">
		<div> 아하 골프</div>
	</c:if>
	
	<!--선택된 것에 따라 url이 다르게 나타난다. 
	http://localhost:8081/WebPage5/sample/kaja2.jsp?chimi=soccer 축구 선택시.  -->
</body>
</html>