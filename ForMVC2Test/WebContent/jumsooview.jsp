<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>점수합</h3>
<h5>국어 점수 <%=request.getParameter("kor") %></h5>
<h5>영어 점수 <%=request.getParameter("eng") %>의 총합은</h5>
<h5>${sum} 입니다</h5> <!--getparameter로 하면 nll이 나온다. el로만 값이 제대로 온다. 위의 것도 param.kor, param.eng 이런 식으로 하면 되지만 아래 것은 param 안붙이고 , ${sum}이렇게만  -->
</body>
</html>