<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

*{
padding:0px;
margin: 0px;
}
header{
border:1px solid black;
padding:10px;
}
h2{
margin:0 atuo;
background-color:red;
text-align:center;
}
nav{
border:1px solid black;
height: 100px;
/*
부모 지정
반드시 크기(높이가 있어야함)
*/
position:relative;
}
ul{
list-style:none;
border:1px solid black;
display:flex;
border-bottom-color:blue;

position:absolute;
right: 0px;
bottom: 0px;
}
ul li{
/*border:1px solid black;*/
padding-right:10px
}
section{
border:1px solid black;
}
footer{
border:1px solid black;
/*부모에 display:flex footer의 자식 div가 옆으로 나온다*/
display:flex;
}
footer > div{
border:1px solid black;
width:33%;
padding:10px;
}
section{
padding: 20px;
}

</style>
</head>
<body>
<header>
<h2>에이콘 학생관리 프로그램</h2>
</header>

<nav>
<li><a href="index.html">home</a></li>
<li>학생등록</li>
<li>학생조회</li>
</nav>

<section>
<h3>에이콘 학생관리 프로그램</h3>
<ol>
<li>학생등록 기능</li>
<li>학생조회기능</li>
<li>학생정보변경</li>
<li>학생정보삭제</li>
</ol>
</section>


<footer>
	<div class="footer_item">acorn</div>
	<div class="footer_item"></div>
	<div class="footer_item">서울시 마포구</div>
</footer>

</body>
</html>