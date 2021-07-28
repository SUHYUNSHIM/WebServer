<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>    <!-- 나는 100_output.jsp -->
<%

                  

	         
	
	
	
	
	
	         
	 //ArrayList 도 가능하나요????? OK 
	/* 세션 속성명의 값을 읽어서  종류가 3개니까 세션도 3개 */
	Object obj1 = session.getAttribute("cnts1");/* 가방개수 */
	Object obj2 = session.getAttribute("cnts2");/* 구두개수 */
	Object obj3 = session.getAttribute("cnts3");/* 넥타이개수 */
	
	
	
	
	//처음인가 ? 아니면 구두에 대한 전 의 것 갯수가 들어있는가? 
			//(처음이 아니면  갯수 계산준비를 시작) 
		         
			
			
			
	int cnt1 = 0, cnt2 = 0, cnt3 = 0, cnt = 0;
	
	if(obj1 !=null){ 
		/* 처음이면(session 없으면 obj1은 null) 아무것도 안함 (다음으로 감) */
		cnt1 = (Integer)obj1;//값이 있으면 cnt1에 넣음 
	}
	
	if(obj2 !=null){
		cnt2 = (Integer)obj2;
	}
	
	if(obj3 !=null){
		cnt3 = (Integer)obj3;
	}
	

	
	
	
	
	//분류작업 
			//가방 ? 구두? 넥타이?   , 각각의 갯수 
			//그럴러면 if문으로 물어봐야함 		
	
	/* bag이 5개라면    */
	cnt = Integer.parseInt(cntValue);/* 넘어온수량을 int로  */
    
	//어떤 상품인지를 파악 
	if("bag".equals(sangValue)){
		cnt1 += cnt; /* 세션 속성값을 위해 누적  cnt1에는 3이 누적됨 */  
	}
	if("koodoo".equals(sangValue)){
		cnt2 += cnt;
	}
	if("tie".equals(sangValue)){
		cnt3 += cnt; //넥타이 10개 선택시 여기에 10개들어감 
	}
		
	
	
	
	
	
	
	
	
	/* 드디어 여기서  세션에 제대로 된 속성값 저장 */
	session.setAttribute("cnts1", cnt1); // 가방 5개  //bag
	session.setAttribute("cnts2", cnt2); //없어 초기치 0 //koodoo
	session.setAttribute("cnts3", cnt3);//없어 0  //tie 
	 
%>






	<h2>현재 장바구니 내역</h2>
	<hr>
	
	<%if(cnt1 !=0) {%> 가방 : <%= cnt1 %> <%} %><br>
	<%if(cnt2 !=0) {%> 구두 : <%= cnt2 %> <%} %><br>
	<%if(cnt3 !=0) {%> 넥타이 : <%= cnt3 %> <%} %><br><br>
		
	<a href="100_input.jsp">계속 산다는~~~</a>
</body>
</html>










