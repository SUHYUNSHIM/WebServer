<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="f1" action="resultProduct.jsp" method="post">
	<table border="2" width=700>
	<th>��ǰ������ȣ����</th>
	<tr><!--ù��° �� ����  -->
		<td>			
				<select name="list">
					<option value="100-�ֽŽŻ�">100-�ֽŽŻ�</option>
					<option value="200-�̿���ǰ">200-�̿���ǰ</option>
					<option value ="300-����Ʈ����">300-����Ʈ����</option>
				</select>	
				<!--value ���� ����: value ������ ���� �� ������ �Ѿ�� ���� value ��. �޺��ڽ�  -->		
	</tr>
	
	
	<tr><td colspan=2>��ǰ����</td></tr>
	<tr>
		<td colspan=2>				
			<input type=checkbox name="choice" value="����">����<br>
			<input type=checkbox name="choice" value="��">��<br>
			<input type=checkbox name="choice" value="����">����<br>
			<input type=checkbox name="choice" value="�׼�����">�׼�����<br>
			<input type=checkbox name="choice" value="�����̾���">�����̾���<br>
			</td>
			<!--</tr> -->
			  -->
			<!-- <div>
			<input type="checkbox" name="choice" checked>
			<label for="product">����</label>
			</div>
			<div>
			<input type="checkbox"  name="choice" >
			<label for="product">��</label>
			</div>
			<div>
			<input type="checkbox"  name="choice" >
			<label for="product">����</label>
			</div>
			<div>
			<input type="checkbox"  name="choice" >
			<label for="product">�׼��縮</label>
			</div>
			<div>
			<input type="checkbox"  name="choice" >
			<label for="product">�����̾���</label>
			</div>
			</td> -->
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
	</form>	
</body>
</html>