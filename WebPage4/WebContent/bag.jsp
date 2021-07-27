<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>bags</title>
</head>
<body>
<h2>가방 구입하자</h2>
<%
	//전 페이지에서 만든 session 속성명 값을 읽어서 
	String sid1 = (String)session.getAttribute("sid1"); //id
	String spw1= (String)session.getAttribute("spw1"); //pw

	if(!sid1.equals("babo") || !spw1.equals("ondal")){
		out.println("<h2>id 암호 입력에러입니다 로그인화면으로 갑니다</h2>");	
		out.println("<a href='index.html'>여기</a>를 누르세요<br>");
	}else{ //로그인 하였으면, 상품 출력 나와서 사게 한다.
		out.println("<img src='./images/bags.jpg'>");
	}
%> <br><br>


</body>
</html>