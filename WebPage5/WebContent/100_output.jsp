<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>    <!-- ���� 100_output.jsp -->
<%

                  

	         
	
	
	
	
	
	         
	 //ArrayList �� �����ϳ���????? OK 
	/* ���� �Ӽ����� ���� �о  ������ 3���ϱ� ���ǵ� 3�� */
	Object obj1 = session.getAttribute("cnts1");/* ���氳�� */
	Object obj2 = session.getAttribute("cnts2");/* ���ΰ��� */
	Object obj3 = session.getAttribute("cnts3");/* ��Ÿ�̰��� */
	
	
	
	
	//ó���ΰ� ? �ƴϸ� ���ο� ���� �� �� �� ������ ����ִ°�? 
			//(ó���� �ƴϸ�  ���� ����غ� ����) 
		         
			
			
			
	int cnt1 = 0, cnt2 = 0, cnt3 = 0, cnt = 0;
	
	if(obj1 !=null){ 
		/* ó���̸�(session ������ obj1�� null) �ƹ��͵� ���� (�������� ��) */
		cnt1 = (Integer)obj1;//���� ������ cnt1�� ���� 
	}
	
	if(obj2 !=null){
		cnt2 = (Integer)obj2;
	}
	
	if(obj3 !=null){
		cnt3 = (Integer)obj3;
	}
	

	
	
	
	
	//�з��۾� 
			//���� ? ����? ��Ÿ��?   , ������ ���� 
			//�׷����� if������ ��������� 		
	
	/* bag�� 5�����    */
	cnt = Integer.parseInt(cntValue);/* �Ѿ�¼����� int��  */
    
	//� ��ǰ������ �ľ� 
	if("bag".equals(sangValue)){
		cnt1 += cnt; /* ���� �Ӽ����� ���� ����  cnt1���� 3�� ������ */  
	}
	if("koodoo".equals(sangValue)){
		cnt2 += cnt;
	}
	if("tie".equals(sangValue)){
		cnt3 += cnt; //��Ÿ�� 10�� ���ý� ���⿡ 10���� 
	}
		
	
	
	
	
	
	
	
	
	/* ���� ���⼭  ���ǿ� ����� �� �Ӽ��� ���� */
	session.setAttribute("cnts1", cnt1); // ���� 5��  //bag
	session.setAttribute("cnts2", cnt2); //���� �ʱ�ġ 0 //koodoo
	session.setAttribute("cnts3", cnt3);//���� 0  //tie 
	 
%>






	<h2>���� ��ٱ��� ����</h2>
	<hr>
	
	<%if(cnt1 !=0) {%> ���� : <%= cnt1 %> <%} %><br>
	<%if(cnt2 !=0) {%> ���� : <%= cnt2 %> <%} %><br>
	<%if(cnt3 !=0) {%> ��Ÿ�� : <%= cnt3 %> <%} %><br><br>
		
	<a href="100_input.jsp">��� ��ٴ�~~~</a>
</body>
</html>










