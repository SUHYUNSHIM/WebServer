<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!--input �κ�  -->
 <table border="1">
 <tr>
 <td colspan ="4">
 <form action ="Telallview"> <!--controller. servlet���� ����. mvc2 �� -->
 <input type="submit" value="����- ��κ���">
 </form>
 </td></tr>
 
 
 <!--�������� ���ٰ� business logic ó���� �� �ٽ� ����� ������ �´�.  -->
 <!--output ��¸� �ϸ� �ȴ�.  -->
 <tr>
 <td>���</td><td>�̸�</td><td>��ȭ</td><td>�Ի���</td>
 </tr>
 <c:forEach var="i" items ="${requestScope.alist1}"> <!--collection���� �ϳ��� ������ ���� i�� �ִ´�.  ��� ����Ʈ�� ���⼭ �޴´�.-->
 <!--Session�� �� �ʿ� ����.  -->
 <tr>
 <td>${i.id }</td> <!--el �������� �����ϰ� ��� �ִ�.�ڹٸ���� ���� ��.  -->
 <td><a href="Telsearchone?name=${i.name}">${i.name }</a></td> <!--������ڸ��� �հ����� �ø� �� �ִ�. �����̳� ������ �ٷ�. .jsp�� ���°�? �����̶�� ��.  -->
 <td>${i.tel }</td>
 <td>${i.d }</td>
 </tr>
 </c:forEach>
 </table>
 <a href="SawonInsert.jsp">[�Է�]</a>  
</body>
</html>