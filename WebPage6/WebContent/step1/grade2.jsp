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
	/*scriptlet. �켱 mvc 0.5�� ������.  */
	String irum = request.getParameter("irum"); //������ �Ǵ��ϴ� ���� ���������� irum, jum ���� �Ѿ��. 
	String jum1 = request.getParameter("jum");
	int jum = Integer.parseInt(jum1);
	
	String kaja = null;
	
	///business logic�� jsp �� ���.controller ����. business logic�̶� ���.
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
<!-- �����ִ� ���� �ٸ� ������ ����ϵ��� �Ͽ���. �ٸ� ������ ����ϰ� �Ϸ��� ����� ��, �� ������ �Ѱ��� �� �־�� �Ѵ�. view�� ���ִ� ���Ͽ� ������ �����ϴ� ����!  -->
<%
	request.getRequestDispatcher("./jspview/"+kaja+".jsp").forward(request,response);
	//${param.irum }���� ������ ${param.jum }�� �̱���!</h1> <h1>�׷��ϱ� ${param.irum }���� A����������~</h1> ���� �޴´�.//
	
	//request�� �������� �Ѿ��, �� ���� �����ϸ� ��������. forward(request, response)�� ���� �Ѱ��־ *******
	//�������� �ٲ� request ���������� �ٸ� ���������� �� ���� �޵��� �Ѵ�. 
	//forward �� ��û�� ���� �������� ���� �־�� �ϴ� �� �ٸ� ������ ������ ���� �����ش�. url�� ���� ���� ����ȴ�.
	
	//request�� �Ѿ�� ���� .forward(request,response) ������ �˾Ƶ�´�.
%>
</body>
</html>