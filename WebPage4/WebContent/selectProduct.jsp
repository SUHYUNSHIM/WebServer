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
	<th>��ǰ������ȣ����</th>
	<tr><!--ù��° �� ����  -->
		<td>
			<form name="f1" action="resultProduct.jsp" method="post">
				<select name="list">
					<option value="#1">100-�ֽŽŻ�</option>
					<option value="#2">200-�̿���ǰ</option>
					<option value ="#3">300-����Ʈ����</option>
				</select>
			</form>	
	</tr>
	<tr><td colspan=2>��ǰ����</td></tr>
	<tr>
		<td colspan=2>		
			<!--
			<input type=checkbox name="choice" value="����">����<br>
			<input type=checkbox name="choice" value="��">��<br>
			<input type=checkbox name="choice" value="����">����<br>
			<input type=checkbox name="choice" value="�׼�����">�׼�����<br>
			<input type=checkbox name="choice" value="�����̾���">�����̾���<br>
			</ td>
			</tr> 
			  -->
			<div>
			<input type="checkbox" name="choice1" checked>
			<label for="product">����</label>
			</div>
			<div>
			<input type="checkbox"  name="choice2" >
			<label for="product">��</label>
			</div>
			<div>
			<input type="checkbox"  name="choice3" >
			<label for="product">����</label>
			</div>
			<div>
			<input type="checkbox"  name="choice4" >
			<label for="product">�׼��縮</label>
			</div>
			<div>
			<input type="checkbox"  name="choice5" >
			<label for="product">�����̾���</label>
			</div>
			</td>
	</tr>
	<tr><td colspan=2>���Թ��</td></tr>
	<tr>		
		<td colspan=2>
			<input type="radio" name="pay" value="ī��" >ī��
			<input type="radio" name="pay" value="����">����
			<input type="radio" name="pay" value="��ǰ��">��ǰ��
		
		</td>
	</tr>
	<tr>
		<td colspan=2>
		<input type="submit" value="�׷� ����߾�!!���԰���!!!">
		<input type = "reset" value="���">
		</td>
	</tr>
	</table>
	
</body>
</html>