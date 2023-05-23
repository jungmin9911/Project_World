<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp" %>


<div id=logina>

   <div id="login">
   <h1>로그인</h1>
   <hr>
   </div>
   <h2>회원아이디와 비밀번호로 로그인 하세요.</h2>
   <br><br>
   <form method="post" action="world.do" name="loginFrm">
   <input type="hidden" name="command" value="login">
   <div id=input>
      <input name="id" placeholder="아이디" size="40" type="text"><br>
   </div>
   <div id=input>
      <input name="pwd" placeholder="비밀번호" size="40" type="password"><br>
   </div>
   <div class="menu1">
      <ul>
          <li><a href="#">아이디 찾기 | </a></li>
             <li><a href="#">비밀번호 찾기</a></li>
      </ul>
   </div>
   <div id="buttons">
      <input type="submit" value="로그인" class="submit" onclick="return loginCheck()">
      <input type="button" value="회원가입" class="cancel" onclick="">
   </div><br><br>
   <div id=content> 회원정보와 관련된 문의사항이 있으시면 고객만족센터에 연락하세요.<br>
   고객만족센터 : 1899-8900</div>
   <div>&nbsp;&nbsp;&nbsp;${param.message}</div>
   <div>&nbsp;&nbsp;&nbsp;${message}</div>
   
   </form>
</div>

<%@ include file="../footer.jsp" %>