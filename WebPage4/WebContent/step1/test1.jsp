<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% //���� 
	int bb=50;
%>

<%
	int aa =30;
	out.println(aa);
%>
���� <%=aa %>�̱��� <br> <!--ǥ����  -->
<!--���þ� ��ũ��Ʈ�� ǥ���� ���� -->
<br>
bb�� <%=bb %>�̱���

������ ǥ���� ������� 
<%
	for(int i=2;i<10;i++){
		for(int j=1;j<10;j++){ %>
			<%=i%> x <%=j %> = <%=i*j %><br> 
	<%	}
	}
%>

</body>
</html>