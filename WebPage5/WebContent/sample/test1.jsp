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
<c:out value="안녕jstl"/><br> <!--가독성  -->
<% out.println("안녕 jstl"); %><br>

<% String aa="chokichi"; %>
<%=aa %>
<c:set var="bb" value="chokichi"></c:set><br> <!--기억창고 bb에 초기치를 setting  -->
${bb}<br> <!--보다 시피 jstl 그다음 줄은 el  --> <!--bb의 초기치를 출력하라  -->

<% int jumsoo=100; %>
<%=jumsoo %>
<c:set var="jum">100</c:set>
${jum }<br>
</body>
</html>