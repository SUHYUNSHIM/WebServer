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
request.setCharacterEncoding("euc-kr"); //post의 한글처리방식 . post 방식이라서.
response.setCharacterEncoding("euc-kr");//내장객체.메소드()

String name = request.getParameter("name");
String height = request.getParameter("height");
String weight = request.getParameter("weight");

double d_height = Double.parseDouble(height);
double d_weight = Double.parseDouble(weight);
double m_height = d_height/100.0;
double bmi = d_weight/ Math.pow(m_height,2);
String result = null;

if(bmi >=30.0)
	result ="비만";
else if(bmi>=25.0)
	result ="과체중";
else if(bmi>=20)
	result="보통";
else
	result ="저체중";
%>
 <h2>당신의 키와 몸무게 BMI 는</h2><br> 
   이름 : <%=name %><br> <!-- 표현식(expression) -->
키 : <%=d_height %>  몸무게 : <%=d_weight %> <br>  
BMI : <%= bmi+" "+ "결과 :  "+result %><br>
</body>
</html>