<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 전체 보기 (getAllInfo.jsp) </title>
</head>
<body>  <!--  나는 getAllInfo.jsp -->
<h1>사원 전체 보기</h1>
<hr><br>
<table border=1>
	<tr>
		<td colspan=4>
		<form action="getAllInfo.do">	<!-- .do -->	<!-- <form action="Telallview" method="post"> -->
			<input type="submit" value="모두보기">
		</form>
		</td>
	</tr>

	<!--   우선 컨트롤러에서 파일 명을 처리할때 .do를 붙이자    +  총지배인(front controller) 
	    .bo ....                                                   -->

	
	<!-- 서블릿으로 갔다가 business logic을 처리한 다음 다시 출발한 곳으로 온다 -->
	<!-- 아래는 되돌아와서 출력하기 위한 부분 -->
	<tr>
		<td>사번</td>
		<td>이름</td>
		<td>전화번호</td>
		<td>입사일</td>
	</tr>
	<!-- java의 for와 같음 -->
	<c:forEach var="vo1" items="${alist1}">		<!-- request scope에 객체전체를 ArrayList alist1에 저장 -->
	<tr>	
		<td>${vo1.id}</td>
		
		      <!-- 수정을 시작하기위한 단계  ,여기서 수정과 삭제 가 짝  -->
		<td><a href="sawonSearchOne.do?name=${vo1.name}"> ${vo1.name} </a></td>	<!-- 전체보기 하면서 수정도 가능하게 하자 -->
		<td>${vo1.tel}</td>
		<td>${vo1.d}</td>
	</tr>
	</c:forEach>

	<table border=0>
	<tr>           <!--   입력은 여기서  -그렇다면 수정은 어디서 ??????
	                           해답은 36번줄 따라가보자 -->
		<td><a href="sawonInsertForm.jsp">[입력]</a></td>
		<td><a href="getAllInfo.jsp">[모두보기]</a></td>
		      <!-- 모두보기 전체출력은 지금 소스자체 즉, 모두보기와 입력이 짝   -->
		     <!--  이렇게 진행하면 crud 완성 --> 
		     <!-- 진행상황확인해보면
		       모두보기-입력이 짝
		       --수정을 시작하여 삭제하고 짝  -->
		       
	</tr>
	</table>
</table>


</body>
</html>