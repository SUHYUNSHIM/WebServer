<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--���λ�  con:together. �±׶��̺귯�� ����  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl</title>
</head>
<body>
<c:out value="�ȳ�jstl"/><br> <!--������. ���� taglib ������ ���� �� ������ ����ϸ� �׳� �����ϰ� �н�  -->
<% out.println("�ȳ� jstl"); %><br> <!--�ڹ�. �ִ��� �ڹٸ� ������� �ʱ� ���ؼ� jstl�� ����Ѵ�.  -->

<% String aa="chokichi"; %>
<%=aa %>

<!--********************************************************************************************  -->
<c:set var="bb" value="chokichi"></c:set><br> <!--���â�� bb�� �ʱ�ġ�� setting  -->
${bb}<br> <!--���� ���� jstl �״��� ���� el  --> <!--bb�� �ʱ�ġ�� ����϶�  --> <!--�̰��� jstl�� el�� ����ǰ�̴�. -->

<!--jstl & e1 2  -->
<% int jumsoo=100; %>
<%=jumsoo %>
<c:set var="jum">100</c:set>
${jum }<br>
</body>
</html>