<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>

  <!--  나는  scope3el.jsp -->

 ${ pageScope.page1 }<br> 
 ${ requestScope.req1 }<br> 
 ${ sessionScope.ses1 }<br> 
 ${ applicationScope.app1 }<br>
<a href="./scope3el.jsp">여기서 브라우저 모두 닫고 scope3el.jsp 재수행!!!!!!!!!<br>
                       이어서 WAS내리고 scope3.jsp 재수행  </a> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   <!--  자바 getAttribute, setAttribute 사용시  -->
   <%----- null null  null  applove , 브라우저모두닫고 재수행시 ------ --%>
   <%----- null null  null  null    , was 내리고 다시올렸을때 ------ --%>
  
    <!--  el인 경우는 null이면 NO출력 이므로 -->
      <%-----   applove , 브라우저모두닫고 재수행시 ------ --%>
     <%-----            , was 내리고 다시올렸을때 ------ --%>
</body>
</html>






