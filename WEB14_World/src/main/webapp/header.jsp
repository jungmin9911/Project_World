<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>World</title>

<script src="script/jquery-3.6.4.js"></script>
<script src="script/script.js"></script>
<link href="css/world.css" rel="stylesheet">  

</head>
<body>
<div id="wrap">
	<header>
		<nav id ="top_menu">
			<ul>
				<c:choose>
					<c:when test ="${empty loginUser}">
						<li><a href="world.do?command=loginForm">login</a></li>
						<li><a href="world.do?command=contract">JOIN</a></li>
					</c:when>
					<c:otherwise>
						<li>${loginUser.name}(${loginUser.id})</li>
						<li><a href="world.do?command=mypage">마이페이지</a></li>
						<li><a href="world.do?command=logout">logout</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
		
		<div id="sub_menu">
			<div class="logo">
				<a href="world.do?command=index">
					<img src="images/mainlogo.png" width="90" height="65">
				</a>
			</div>
			
			<div class="category">
				<ul class="category_top_menu">	
					<li><a href="world.do?command=attractionForm">어트렉션</a></li>
					<li><a href="world.do?command=parade">퍼레이드</a></li>
					<li><a href="world.do?command=resurve">예매하기</a></li>
					<li><a href="world.do?command=guide">이용가이드</a></li>
					<li><a href="world.do?command=notice">공지사항</a></li>
				</ul>		
			</div>
		</div>
</header>

		
			

