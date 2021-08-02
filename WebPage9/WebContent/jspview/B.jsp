<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>${param.irum }님의 점수는 ${param.jum }점 이군요!</h1>
<h1>그러니까 ${param.irum }님은 B학점이지요~</h1>

그리고 <%=request.getAttribute("suhyun") %>님!
<a href="jumForm.html">이제 입력화면으로 갑니다</a>
</body>
</html>