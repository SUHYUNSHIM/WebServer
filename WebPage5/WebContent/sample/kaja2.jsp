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
			<!--test2.jsp���� select�� name�� chimi�� request.getParameter() ��� param���� �޾Ҵ�.  -->
	<!--if ����, el+jstl ����  -->		
	<c:if test="${param.chimi =='tennis'}"> <!--getParameter("chimi")  -->
		<div> ���� �״Ͻ�</div>
	</c:if> <!--�ڹٷ� ġ�� if 1����  -->
	<c:if test="${param.chimi =='soccer'}">
		<div> ���� �౸</div>
	</c:if> 
	<c:if test="${param.chimi == 'golf'}">
		<div> ���� ����</div>
	</c:if>
	
	<!--���õ� �Ϳ� ���� url�� �ٸ��� ��Ÿ����. 
	http://localhost:8081/WebPage5/sample/kaja2.jsp?chimi=soccer �౸ ���ý�.  -->
</body>
</html>