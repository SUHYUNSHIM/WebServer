<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>requests</title>
</head>
<body>
<h2>�� ���?</h2>
<%
	String vid1 = request.getParameter("id1");
	String vpw1 = request.getParameter("pw1");

%>
���� id�� <%=vid1 %>�̰� ��ȣ�� <%=vpw1 %>�̱���<p>

<!--session�� ���� ���� ���������� id/pw�� �˰� �Ѵ�.  -->

<%
					/*name  value*/
session.setAttribute("sid1",vid1); //������ ����ִ� ����
session.setAttribute("spw1",vpw1); //������ ����ִ� ����
%>
���� ������ <a href="bag.jsp">����</a>�� ��������<br>
���� ������ <a href="shoes.jsp">����</a>�� ��������<br>
</body>
</html>