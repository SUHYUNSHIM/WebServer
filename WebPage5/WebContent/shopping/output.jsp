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
	
	/*���� ��� �־����� sesion ����
	���� �Ӽ����� ���� �о ��üŸ���� ������ ����.
	*/
	Object obj1 = session.getAttribute("cnts1");
	Object obj2 = session.getAttribute("cnts2");
	Object obj3 = session.getAttribute("cnts3");
	
	//ó���ΰ�? �ƴϸ� ���ο� ���� �� ������ ����ִ°�?
	//ó���� �ƴѸ� ���� ����غ� ����.
	
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
	
	//�з��۾�
	cnt = Integer.parseInt(cntValue); //�Ѿ�� ���� int�� 
	
	/*� ��ǰ������ �ľ�  */
	if("bag".equals(sangValue)){ 
		cnt1 += cnt;
	}
	if("shoes".equals(sangValue)){
		cnt2+= cnt;
	}
	if("tie".equals(sangValue)){
		cnt3 += cnt;
	}
	
	/*���⼭ ���ǿ� ����� �� �Ӽ����� �����Ѵ�  */
	session.setAttribute("cnts1",cnt1); //���â��.
	session.setAttribute("cnts2",cnt2);
	session.setAttribute("cnts3",cnt3);
	/*
	session.invalidate() ���ǻ���. �α����� �������� ����� ��,�α׾ƿ��� ��� ���� out.
	//ȸ��Ż��� db���� ȸ�������� �����ϴ� ��.
	session.removeAttribute("cnts2"); cnts2 �Ӽ��� ����
	*/

	%>
	
	<h2>���� ��ٱ��� ����</h2>
	<hr>
	<%if(cnt1 !=0){
		%> ����:<%=cnt1%>
	<%} %><br>
	<%if(cnt2 !=0){
		%> ����:<%=cnt2%>
	<%} %><br>
	<%if(cnt3 !=0){
		%> ��Ÿ��:<%=cnt3%>
	<%} %><br>
	<a href="bucket.jsp">��� �緯����</a>
</body>
</html>