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

<!--input 부분  -->
 <table border="1">
 <tr>
 <td colspan ="4">
 <form action ="Telallview"> <!--controller. servlet으로 간다. mvc2 모델 -->
 <input type="submit" value="가자- 모두보기">
 </form>
 </td></tr>
 
 
 <!--서블릿으로 갔다가 business logic 처리한 후 다시 출발한 곳으로 온다.  -->
 <!--output 출력만 하면 된다.  -->
 <tr>
 <td>사번</td><td>이름</td><td>전화</td><td>입사일</td>
 </tr>
 <c:forEach var="i" items ="${requestScope.alist1}"> <!--collection에서 하나씩 끄집어 내어 i에 넣는다.  사원 리스트를 여기서 받는다.-->
 <!--Session을 쓸 필요 없음.  -->
 <tr>
 <td>${i.id }</td> <!--el 문법으로 간단하게 찍고 있다.자바모양을 없앤 것.  -->
 <td><a href="Telsearchone?name=${i.name}">${i.name }</a></td> <!--출력하자마자 손가락을 올릴 수 있다. 수정이나 삭제가 바로. .jsp가 없는것? 서블릿이라는 것.  -->
 <td>${i.tel }</td>
 <td>${i.d }</td>
 </tr>
 </c:forEach>
 </table>
 <a href="SawonInsert.jsp">[입력]</a>  
</body>
</html>