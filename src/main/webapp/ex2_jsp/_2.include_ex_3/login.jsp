<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 화면</title>
    <link href="../../css/ch03-1.css" 
    type="text/css" 
    rel="stylesheet">
</head>
<body>
<form action="loginProcess" method="post">
    <h1>로그인</h1>
    <hr>
    <b>아이디</b>
    <input type="text" name="id" placeholder="Enter id">
    <b>비밀번호</b>
    <input type="text" name="passwd" placeholder="Enter password">
    <div class="clearfix">
        <button type="submit" class="submitbtn">Submit</button>
        <button type="reset" class="cancelbtn">Cancel</button>
    </div>
</form>
</body>
</html>

<!-- 1. action에 해당하는 서블릿 만들기
	 2. 파라미터로 넘긴 아이디 값 세션에 저장.
	 	(세션 속성은 "id")
	 3. response.sendRedirect("template.jsp"); 실행 
-->