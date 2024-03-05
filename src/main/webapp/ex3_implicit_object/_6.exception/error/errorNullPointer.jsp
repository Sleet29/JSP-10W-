<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR NULLPOINT EXCEPTION</title>
<style>
	body {
		background: pink; text-align:center;
	}
	
	@keyframes textColorAnimation {
		0% { color : red;}
		20% { color : orange;}
		40% { color : yellow;}
		60% { color : green;}
		80% { color : blue;}
		100% { color : magenta;}
	}	
	span{
		font-weight:bold;
		font-size : 40px;
		animation-name : textColorAnimation;
		animation-duration : 5s;
		animation-iteration-count : infinite;
	}
</style>
</head>
<body>
	<span>서비스 처리 과정에서 널(NULL) 에러가 발생하였습니다.</span> <br>
</body>
</html>