<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div style="clear: both;"></div>
<article>
	<div class="att_title_img">
      	<img src="images/att_title_img.jpg" width="100%" height="485px">
    	<h1 id="att_title_text">어트랙션</h1>
    	<h1 id="att_title_exp">언제나 새롭고 즐거운 경험을 주는 롯데월드 어트랙션을 소개합니다!</h1>
	</div>
	<div id="att_search">조건검색</div>
	<div id="att_back">
		<c:forEach var="attraction" items="${list}">
			<h3>${list}</h3>
		</c:forEach>
	</div>
</article>
<%@ include file="../footer.jsp" %>