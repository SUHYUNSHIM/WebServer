<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	String irum = request.getParameter("irum");
	String jum1 = request.getParameter("jum");
	int jum = Integer.parseInt(jum1);
	
	String kaja = null;
	
	///business logic을 jsp 가 담당.
	if(jum>=90)
		kaja="A";
	else if(jum>=80)
		kaja = "B";
	else if (jum>=70)
		kaja="C";
	else if (jum>=60)
		kaja = "D";
	else
		kaja="F";

%>
<!--view logic도 jsp가 담당  -->
아하 이름은 <%= irum%>이고 <br>
학점은 <%=kaja %>학점 이시군요

<!--한 jsp가 보여주는 것과 계산을 모두 담당했을 때 mvc1 모델에 가깝다고 판단 가능하다.  -->
</body>
</html>