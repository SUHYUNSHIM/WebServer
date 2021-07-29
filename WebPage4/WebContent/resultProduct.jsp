<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("euc-kr"); //post의 한글처리방식
response.setCharacterEncoding("euc-kr");

//넘어오는 것은 value 값이다. request.getParamater--> 문자열, 넘긴 value 값 받기.
String jong1 = request.getParameter("list"); //콤보박스는 하나만

//여러개가 넘어오는 것은 어떻게? request.getParameterValues("")  --> values
//체크한 것만 잡히는 유동적 배열
String[] products = request.getParameterValues("choice");		

//라디오버튼 하나만
String pay = request.getParameter("pay");

%>

<body>
<%=jong1%>이군요 <br>
<%
for(String p : products){ %>
	<%=p%><br>
<%}%>
<%=pay %> 이군요 <br>


<h2>구입내역</h2>
<!-- value 값의 역할: value 값으로 구분 및 서버로 넘어가는 값이 value 값 -->
<table border="2 width="700>
	<tr><td>제품 종류번호 및 제목</td>
		<td> <%
			if(jong1 !=null){
				out.println(jong1); //클라이언트로 전송
			}
		%></td></tr>
	<tr><td>제품선택</td>
		<td><%
			if(products !=null){
				for(int j=0;j<products.length;j++)
					out.println(products[j]+"<br>");
			}%> </td></tr>
			
	<tr><td>구입 방법</td>
		<td><%
			if(pay !=null){
				out.println(pay);
			}%> </td></tr>
	<tr><td colspan =3>다시 구입하려면	
		<a href="selectProduct.jsp">여기</a>를 누르세요</td></tr>	
</table>	
</body>
</html>