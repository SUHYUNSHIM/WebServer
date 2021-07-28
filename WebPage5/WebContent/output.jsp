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
	String sangValue =request.getParameter("product");
	String cntValue = request.getParameter("cnt");
	
	/*전에 몇개가 있었는지 sesion 생성
	세션 속성명의 값을 읽어서 객체타입의 변수에 저장.
	*/
	Object obj1 = session.getAttribute("cnts1");
	Object obj2 = session.getAttribute("cnts2");
	Object obj3 = session.getAttribute("cnts3");
	
	//처음인가? 아니면 구두에 대한 전 갯수가 들어있는가?
	//처음이 아닌면 갯수 계산준비를 시작.
	
	int cnt1=0, cnt2=0, cnt3=0, cnt=0;
	if(obj1 !=null){
		cnt1 = (Integer)obj1;
	}
	if(obj2 !=null){
		cnt2 = (Integer)obj2;
	}
	if(obj3 !=null){
		cnt3 = (Integer)obj3;
	}
	
	//분류작업
	cnt = Integer.parseInt(cntValue); //넘어온 수를 int로 
	
	/*어떤 상품인지를 파악  */
	if("bag".equals(sangValue)){ 
		cnt1 += cnt;
	}
	if("shoes".equals(sangValue)){
		cnt2+= cnt;
	}
	if("tie".equals(sangValue)){
		cnt3 += cnt;
	}
	
	/*여기서 세션에 제대로 된 속성값을 저장한다  */
	session.setAttribute("cnts1",cnt1); //기억창고.
	session.setAttribute("cnts2",cnt2);
	session.setAttribute("cnts3",cnt3);
	/*
	session.invalidate() 세션삭제. 로그인이 세션으로 진행될 때,로그아웃인 경우 세션 out.
	//회원탈퇴는 db에서 회원정보를 삭제하는 것.
	session.removeAttribute("cnts2"); cnts2 속성명 삭제
	*/

	%>
	
	<h2>현재 장바구니 내역</h2>
	<hr>
	<%if(cnt1 !=0){
		%> 가방:<%=cnt1%>
	<%} %><br>
	<%if(cnt2 !=0){
		%> 구두:<%=cnt2%>
	<%} %><br>
	<%if(cnt3 !=0){
		%> 넥타이:<%=cnt3%>
	<%} %><br>
	<a href="bucket.jsp">계속 사러간다</a>
</body>
</html>