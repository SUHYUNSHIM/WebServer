<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니</title>
</head>
<body>
	<hr>
	<h2>쇼핑몰 상품을 선택하고 수량을 입력한 후 장바구니에 담으세요</h2>
	<form action="output.jsp">
	<select name="product">
		<option value="bag">가방(1개 5000원)</option>
		<option value="shoes">구두(1개 7000원)</option>
		<option value="tie">넥타이(1개 15000원)	</option>
	</select>
	<input type="text" name= "cnt" size=3>개
	<br><br>
	<input type="submit" value="장바구니 담기">
	<input type="reset" value=" 안 살래">
	</form>

</body>
</html>