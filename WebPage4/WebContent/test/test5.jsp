<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>include 지시어로 파일 포함하기</h2>
우리 회사는 작지만 확실한 행복을 보장하는 이벤트를 드립니다<br>
방문을 환영합니다<br>
<hr>

<%@ include file="includeSub.jsp" %>
<!-- include. 포함시켜서 함께 수행.-->
<!--action tag. 먼저 실행하고 그 결과를 포함시킨다.
	<jsp:forward page"aa.jsp"/>
	
	html + <jsp:forward  . . >  
<!-- 좌꺽새 우꺽새 %와 같은 의미, 모두 jsp이다.
	action tag, forward는 가독성 면에서 사용하는 것이다. 전부 태그로 보이는 효과가 있다.
  -->	
 

9ooooo    
</body>
</html>