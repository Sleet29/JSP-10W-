<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>include 테스트</title>
</head>
<style>
body {
	margin: 0px
}

span {
	background: yellow
}

footer {
	position: fixed;
	bottom: 0px;
	width: 100%
}

body>footer>h3 {
	background: lightgray;
	text-align: center;
	margin: 0px;
	height: 3rem;
	line-height: 3rem
}

header div {
	padding: 1%;
	text-align: right;
	background-color: green;
	color: white
}

a {
	text-decoration: none;
	color: white
}

a:hover {
	font-weight: bold
}
</style>
<body>
	<%@ include file="header.jsp" %>
	<h1>template.jsp 파일입니다.</h1>
	<span>header.jsp의 id 값입니다. : <%=id%> 
	</span>
	<%@ include file="footer.jsp"%>
</body>
</html>