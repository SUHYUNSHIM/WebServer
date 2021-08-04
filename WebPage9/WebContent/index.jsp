<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action="Sungjuk" method="post"> <!-- @webServlet 인자를 사용. action..jsp 없이? java파일. Sungjuk이라는 서블릿을 찾아간다. -->
	<input type= submit value="가자">
	</form>
	<!--일단 실행하면? 방가방가까지 잘 나온다. 그란 실제는 계산이 이루어지고, 결과는 view로 보내야 mvc의 구조라고 할 수 있다.  -->
</body>
</html>