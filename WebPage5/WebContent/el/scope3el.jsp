<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>

  <!--  ����  scope3el.jsp -->

 ${ pageScope.page1 }<br> 
 ${ requestScope.req1 }<br> 
 ${ sessionScope.ses1 }<br> 
 ${ applicationScope.app1 }<br>
<a href="./scope3el.jsp">���⼭ ������ ��� �ݰ� scope3el.jsp �����!!!!!!!!!<br>
                       �̾ WAS������ scope3.jsp �����  </a> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   <!--  �ڹ� getAttribute, setAttribute ����  -->
   <%----- null null  null  applove , ��������δݰ� ������ ------ --%>
   <%----- null null  null  null    , was ������ �ٽÿ÷����� ------ --%>
  
    <!--  el�� ���� null�̸� NO��� �̹Ƿ� -->
      <%-----   applove , ��������δݰ� ������ ------ --%>
     <%-----            , was ������ �ٽÿ÷����� ------ --%>
</body>
</html>






