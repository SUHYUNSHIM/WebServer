<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="2" width=700>
	<th>제품종류번호선택</th>
	<tr><!--첫번째 줄 시작  -->
		<td>
			<form name="f1" action="resultProduct.jsp" method="post">
				<select name="list">
					<option value="#1">100-최신신상</option>
					<option value="#2">200-이월상품</option>
					<option value ="#3">300-베스트셀러</option>
				</select>
			</form>	
	</tr>
	<tr><td colspan=2>제품선택</td></tr>
	<tr>
		<td colspan=2>		
			<!--
			<input type=checkbox name="choice" value="구두">구두<br>
			<input type=checkbox name="choice" value="옷">옷<br>
			<input type=checkbox name="choice" value="가방">가방<br>
			<input type=checkbox name="choice" value="액세서리">액세서리<br>
			<input type=checkbox name="choice" value="무선이어폰">무선이어폰<br>
			</ td>
			</tr> 
			  -->
			<div>
			<input type="checkbox" name="choice1" checked>
			<label for="product">구두</label>
			</div>
			<div>
			<input type="checkbox"  name="choice2" >
			<label for="product">옷</label>
			</div>
			<div>
			<input type="checkbox"  name="choice3" >
			<label for="product">가방</label>
			</div>
			<div>
			<input type="checkbox"  name="choice4" >
			<label for="product">액세사리</label>
			</div>
			<div>
			<input type="checkbox"  name="choice5" >
			<label for="product">무선이어폰</label>
			</div>
			</td>
	</tr>
	<tr><td colspan=2>구입방법</td></tr>
	<tr>		
		<td colspan=2>
			<input type="radio" name="pay" value="카드" >카드
			<input type="radio" name="pay" value="현금">현금
			<input type="radio" name="pay" value="상품권">상품권
		
		</td>
	</tr>
	<tr>
		<td colspan=2>
		<input type="submit" value="그래 결심했어!!구입결정!!!">
		<input type = "reset" value="취소">
		</td>
	</tr>
	</table>
	
</body>
</html>