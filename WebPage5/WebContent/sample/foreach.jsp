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

<h2>�ڹٽ�Ÿ��!</h2>
<%
									//������ �Ӽ��� "kwail". string �迭�� ����ȯ ����� �Ѵ�. ��ü�� ����.
	String[] kwail = (String [])session.getAttribute("kwail");
	for(String imsi:kwail){ //�ڹٿ��� �ϳ��� ������ ���. 
		out.println(imsi+"<br>"); //�ڹٴ� for(...:..) Ŭ��. //�ڹٽ�ũ��Ʈ������ for in//
	}
	
%>

<h2>jstl+ EL ��Ÿ��</h2>
	<c:forEach var="imsi" items="${sessionScope.kwail}"> <!-- session.getAttribute  ���, ��,��-->
		${imsi }<br>
	</c:forEach>
</body>
</html>