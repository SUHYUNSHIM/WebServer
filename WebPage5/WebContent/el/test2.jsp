<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
문자형 숫자 * 숫자 <br>
<%=Integer.parseInt("100")*200%><br>

${"100"*200}<br>
${"100*200"}<br>
</body>
</html>