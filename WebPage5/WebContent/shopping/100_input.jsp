<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니</title>
</head>
<body>       <!-- 100_input.jsp -->
	<hr>
	<h2>쇼핑몰상품을 선택하고 수량을 입력한 후 장바구니에 담으세요</h2>
	<form action="100_output.jsp">
	<select name="sangpum">
	   <option value="bag">가방(1개 50000)</option>
	   <option value="koodoo">구두(1개 70000)</option>
	   <option value="tie">넥타이(1개 15000)</option>
	</select>
	<input type="text" name=cnt size=3>개
	<br><br>
	<input type="submit" value = "장바구니담기">
	<input type="reset" value = " 안살래~~~">
	</form>
</body>
</html>




