<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl</title>
</head>
<body>
<c:out value="�ȳ�jstl"/><br> <!--������  -->
<% out.println("�ȳ� jstl"); %><br>

<% String aa="chokichi"; %>
<%=aa %>
<c:set var="bb" value="chokichi"></c:set><br> <!--���â�� bb�� �ʱ�ġ�� setting  -->
${bb}<br> <!--���� ���� jstl �״��� ���� el  --> <!--bb�� �ʱ�ġ�� ����϶�  -->

<% int jumsoo=100; %>
<%=jumsoo %>
<c:set var="jum">100</c:set>
${jum }<br>
</body>
</html>