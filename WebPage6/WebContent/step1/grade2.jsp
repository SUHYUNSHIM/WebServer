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
	/*scriptlet. 우선 mvc 0.5를 만들어본다.  */
	String irum = request.getParameter("irum"); //학점을 판단하는 다음 페이지에도 irum, jum 으로 넘어간다. 
	String jum1 = request.getParameter("jum");
	int jum = Integer.parseInt(jum1);
	
	String kaja = null;
	
	///business logic을 jsp 가 담당.controller 역할. business logic이란 계산.
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
<!-- 보여주는 것은 다른 파일이 담당하도록 하였다. 다른 파일이 담당하게 하려면 계산한 값, 즉 학점을 넘겨줄 수 있어야 한다. view를 해주는 파일에 학점을 전달하는 문법!  -->
<%
	request.getRequestDispatcher("./jspview/"+kaja+".jsp").forward(request,response);
	//${param.irum }님의 점수는 ${param.jum }점 이군요!</h1> <h1>그러니까 ${param.irum }님은 A학점이지요~</h1> 으로 받는다.//
	
	//request는 페이지가 넘어가면, 그 값을 전달하면 없어진다. forward(request, response)를 통해 넘겨주어서 *******
	//페이지가 바뀌어도 request 범위에서도 다른 페이지서도 그 값을 받도록 한다. 
	//forward 는 요청을 받은 곳에서도 답을 주어야 하는 데 다른 곳에서 실제로 답을 보내준다. url의 변경 없이 진행된다.
	
	//request가 넘어가도 이제 .forward(request,response) 때문에 알아듣는다.
%>
</body>
</html>