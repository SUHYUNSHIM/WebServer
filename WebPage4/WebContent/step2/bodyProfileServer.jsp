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
request.setCharacterEncoding("euc-kr"); //post�� �ѱ�ó����� . post ����̶�.
response.setCharacterEncoding("euc-kr");//���尴ü.�޼ҵ�()

String name = request.getParameter("name");
String height = request.getParameter("height");
String weight = request.getParameter("weight");

double d_height = Double.parseDouble(height);
double d_weight = Double.parseDouble(weight);
double m_height = d_height/100.0;
double bmi = d_weight/ Math.pow(m_height,2);
String result = null;

if(bmi >=30.0)
	result ="��";
else if(bmi>=25.0)
	result ="��ü��";
else if(bmi>=20)
	result="����";
else
	result ="��ü��";
%>
 <h2>����� Ű�� ������ BMI ��</h2><br> 
   �̸� : <%=name %><br> <!-- ǥ����(expression) -->
Ű : <%=d_height %>  ������ : <%=d_weight %> <br>  
BMI : <%= bmi+" "+ "��� :  "+result %><br>
</body>
</html>