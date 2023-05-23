<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
      
<style>
table#qnaList {border-collapse: collapse;		border-bottom: 1px solid #333; 
		width: 100%; margin-bottom: 20px; }
table#qnaList th, td {	border-bottom: 1px dotted #333;	text-align: center; font-size:20px;}	
#buttons{text-align:center;}
.submit{position:relative; font-size: 20px;padding-bottom:10px; width:200px; height:55px;color: #fff; background:rgb(111, 35, 249);;font-weight:bold;border-radius: 28px;border:1px solid #6317ed;}
.cancel{position:relative; font-size: 20px;padding-bottom:10px; width:200px; height:55px;color:#6317ed; background:white;font-weight:bold;border-radius: 28px;border:1px solid #6317ed;}
</style>      
      
<article>
<br><br><br><br><br><br><br>
<h2 style="text-align:center; font-size:40px;color:black">QnA 게시판 </h2><br><br><br>
<form name="formm" method="post">
<table id="qnaList">
	<tr>	<th>번호</th><th>제목</th><th>등록일</th><th>답변 여부</th></tr>
	<c:forEach items="${qnaList}"  var="qnaVO">
		<tr ><td> ${qnaVO.Lqseq}</td>    
    		<td><a href="world.do?command=qnaView&Lqseq=${qnaVO.Lqseq}">${qnaVO.subject}</a></td>      
       		<td><fmt:formatDate value="${qnaVO.indate}" type="date"/></td>
       		<td><c:choose>
				<c:when test="${qnaVO.rep==1}"> no </c:when>
				<c:when test="${qnaVO.rep==2}"> yes </c:when>
			</c:choose></td>    
   		</tr>
  	</c:forEach>
</table>

<div class="clear"></div>
<div id="paging" style="font-size:120%; font-weight:bold; margin-left:300px">
	<c:url var="action" value="world.do?command=qnaList" />
	<c:if test="${paging.prev}">
		<a href="${action}&page=${paging.beginPage-1}">◀</a>&nbsp;
	</c:if>
	<c:forEach begin="${paging.beginPage}" end="${paging.endPage}" var="index">
		<c:choose>
			<c:when test="${paging.page==index}">
				[${index}]
			</c:when>
			<c:otherwise>
				<a href="${action}&page=${index}">${index}</a>&nbsp;
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${paging.next}">
		<a href="${action}&page=${paging.endPage+1}">▶</a>&nbsp;
	</c:if>
</div>

<div  class="clear"></div><br>


<div id="buttons">
	<input type="button"  value="등록하기"  class="submit" 
		onClick="location.href='world.do?command=qnaWriteForm'"> 
	<input type="button"   value="취소"  class="cancel" 	
		onclick="location.href='world.do?command=index'">  
</div>
<div  class="clear"></div><br>
</form>


</article>    


<%@ include file="../footer.jsp" %>