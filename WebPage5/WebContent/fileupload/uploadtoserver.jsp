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
<h2>upload하자</h2>
<%
	String bang="d:/upbang"; //저장 경로
	//cos.jar가 가진 파일 업로드 클래스. 
	//실제 업로드되는 문장
	MultipartRequest mr1 = new MultipartRequest(request, bang, 10*1024*1024,"euc-kr",new DefaultFileRenamePolicy());
																					//같은 이름의 파일이 있다면 다른 이름으로 자동저긍로 저장된다.
	String virum1 	  = mr1.getParameter("irum1");
	String vfilename1 = mr1.getFilesystemName("file1");
	String vfilename2 = mr1.getFilesystemName("file2");
	String vfilename3 = mr1.getFilesystemName("file3");
	//
	//String vfilename2 = mr1.getFilesystemName("file2");
	
	if(vfilename1 !=null){
		out.println("사용자 이름은 "+virum1+" 이시구요"+"<br>");
		out.println("축하축하"+vfilename1+" 라는 파일 올리기 성공했어요");
	}
	if(vfilename2 !=null){
		out.println("두번째로 올리네"+vfilename2);
	} 
	if(vfilename3 !=null){
		out.println("세번째로 올리네"+vfilename3);
	} 
	
	else
		out.println("에러");
	
%>

</body>
</html>