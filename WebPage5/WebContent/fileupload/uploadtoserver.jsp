<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>upload����</h2>
<%
	String bang="d:/upbang"; //���� ���
	//cos.jar�� ���� ���� ���ε� Ŭ����. 
	//���� ���ε�Ǵ� ����
	MultipartRequest mr1 = new MultipartRequest(request, bang, 10*1024*1024,"euc-kr",new DefaultFileRenamePolicy());
																					//���� �̸��� ������ �ִٸ� �ٸ� �̸����� �ڵ������ ����ȴ�.
	String virum1 	  = mr1.getParameter("irum1");
	String vfilename1 = mr1.getFilesystemName("file1");
	String vfilename2 = mr1.getFilesystemName("file2");
	String vfilename3 = mr1.getFilesystemName("file3");
	//
	//String vfilename2 = mr1.getFilesystemName("file2");
	
	if(vfilename1 !=null){
		out.println("����� �̸��� "+virum1+" �̽ñ���"+"<br>");
		out.println("��������"+vfilename1+" ��� ���� �ø��� �����߾��");
	}
	if(vfilename2 !=null){
		out.println("�ι�°�� �ø���"+vfilename2);
	} 
	if(vfilename3 !=null){
		out.println("����°�� �ø���"+vfilename3);
	} 
	
	else
		out.println("����");
	
%>

</body>
</html>