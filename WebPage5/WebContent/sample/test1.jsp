<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--접두사  con:together. 태그라이브러리 선언  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl</title>
</head>
<body>
<c:out value="안녕jstl"/><br> <!--가독성. 위의 taglib 선언이 없이 이 문장을 사용하면 그냥 무시하고 패스  -->
<% out.println("안녕 jstl"); %><br> <!--자바. 최대한 자바를 사용하지 않기 위해서 jstl을 사용한다.  -->

<% String aa="chokichi"; %>
<%=aa %>

<!--********************************************************************************************  -->
<c:set var="bb" value="chokichi"></c:set><br> <!--기억창고 bb에 초기치를 setting  -->
${bb}<br> <!--보다 시피 jstl 그다음 줄은 el  --> <!--bb의 초기치를 출력하라  --> <!--이것은 jstl과 el의 합작품이다. -->

<!--jstl & e1 2  -->
<% int jumsoo=100; %>
<%=jumsoo %>
<c:set var="jum">100</c:set>
${jum }<br>
</body>
</html>