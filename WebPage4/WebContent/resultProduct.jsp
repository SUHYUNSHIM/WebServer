<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("euc-kr"); //post�� �ѱ�ó�����
response.setCharacterEncoding("euc-kr");

//�Ѿ���� ���� value ���̴�.
String jong1 = request.getParameter("list"); //�޺��ڽ��� �ϳ���

//�������� �Ѿ���� ���� ���?
String[] products = request.getParameterValues("choice");		

String pay = request.getParameter("pay"); //������ư �ϳ���

%>

<body>
<%=jong1%>�̱��� <br>
<%
for(String p : products){ %>
	<%=p%><br>
<%}%>
<%=pay %> �̱��� <br>


<h2>���Գ���</h2>
<!-- value ���� ����: value ������ ���� �� ������ �Ѿ�� ���� value �� -->
<table border="2 width="700>
	<tr><td>��ǰ ������ȣ �� ����</td>
		<td> <%
			if(jong1 !=null){
				out.println(jong1); //Ŭ���̾�Ʈ�� ����
			}
		%></td></tr>
	<tr><td>��ǰ����</td>
		<td><%
			if(products !=null){
				for(int j=0;j<products.length;j++)
					out.println(products[j]+"<br>");
			}%> </td></tr>
			
	<tr><td>���� ���</td>
		<td><%
			if(pay !=null){
				out.println(pay);
			}%> </td></tr>
	<tr><td colspan =3>�ٽ� �����Ϸ���	
		<a href="selectProduct.jsp">����</a>�� ��������</td></tr>	
</table>	
</body>
</html>