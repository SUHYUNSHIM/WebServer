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
	String tel=request.getParameter("tel");///��ȭ��ȣ�� Ư�� ��ȣ�� �� ����. "bimil"�̸� ������ ���.
	
	/*�Ʒ����� �ٽ� �ٸ� jsp�� forward�� ���� ����Ͽ�*/
	session.setAttribute("sirum",irum); //�޴� ���� sessionScope.sirum���� �޴´�.
	session.setAttribute("stel", tel);
	/*session.setAttribute("ses1", "seslove"); //����������ִ� ����   */
	/*���� �������� �Ѿ�� �� ó�� ����� �״�� ��� ����Ǵ� ������ �ƴ� ���� ���� ����� session.  */
%>
<!---=======================================================================  -->
<% if(tel.equals("bimil")){ %> <!--���ڿ� ��, �ڹ��� ���� ���� �״��, equals ���.  -->
		<jsp:forward page="impossible.jsp"/> <!--action tag. xml �������� ��� ***********forward�� ������ �ٲٴ� ���̴�.-->
	<%} else{%>
	<jsp:forward page="homepage.jsp"/>
	<%} %>

</body>
</html>