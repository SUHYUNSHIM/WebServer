<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>��� ��ü ���� (getAllInfo.jsp) </title>
</head>
<body>  <!--  ���� getAllInfo.jsp -->
<h1>��� ��ü ����</h1>
<hr><br>
<table border=1>
	<tr>
		<td colspan=4>
		<form action="getAllInfo.do">	<!-- .do -->	<!-- <form action="Telallview" method="post"> -->
			<input type="submit" value="��κ���">
		</form>
		</td>
	</tr>

	<!--   �켱 ��Ʈ�ѷ����� ���� ���� ó���Ҷ� .do�� ������    +  ��������(front controller) 
	    .bo ....                                                   -->
	<!-- �������� ���ٰ� business logic�� ó���� ���� �ٽ� ����� ������ �´� -->
	<!-- �Ʒ��� �ǵ��ƿͼ� ����ϱ� ���� �κ� -->
	<tr>
		<td>���</td>
		<td>�̸�</td>
		<td>��ȭ��ȣ</td>
		<td>�Ի���</td>
	</tr>
	<!-- java�� for�� ���� -->
	<c:forEach var="vo1" items="${alist1}">		<!-- request scope�� ��ü��ü�� ArrayList alist1�� ���� -->
	<tr>	
		<td>${vo1.id}</td>
		
		      <!-- ������ �����ϱ����� �ܰ�  ,���⼭ ������ ���� �� ¦  -->
		<td><a href="sawonSearchOne.do?name=${vo1.name}"> ${vo1.name} </a></td>	<!-- ��ü���� �ϸ鼭 ������ �����ϰ� ���� -->
		<td>${vo1.tel}</td>
		<td>${vo1.d}</td>
	</tr>
	</c:forEach>
	
	<table border=0>
	<tr>           <!--   �Է��� ���⼭  -�׷��ٸ� ������ ��� ??????
	                           �ش��� 36���� ���󰡺��� -->
		<td><a href="sawonInsertForm.jsp">[�Է�]</a></td>
		<td><a href="getAllInfo.jsp">[��κ���]</a></td>
		      <!-- ��κ��� ��ü����� ���� �ҽ���ü ��, ��κ���� �Է��� ¦   -->
		     <!--  �̷��� �����ϸ� crud �ϼ� --> 
		     <!-- �����ȲȮ���غ���
		       ��κ���-�Է��� ¦
		       --������ �����Ͽ� �����ϰ� ¦  -->
	</tr>
	</table>
</table>
</body>
</html>