<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쿠키를 이용한 화면 설정 예제</title>
<style>
	body{margin:100px auto; text-align:center; width:500px;}
	fieldset{width:100%;}
	form{height:3em;line-height:3em}
</style>
<%-- src="/JSP/js/jquery-3.7.0.js" --%>
<script src="<%=request.getContextPath() %>/js/jquery-3.7.1.js"></script>
<%
	String language = "korea";

	
%>
<script >
$(function(){
	const id = "#<%=language%>";
	console.log(id); //#korea 또는 #english
	<%-- const id = "input[value='<%=language%>']" --%>
	$(id).prop('checked',true);
})

</script>
</head>
<body>
	<h3>안녕하세요. 이것은 쿠키 예제입니다</h3>
	<h3>Hello. This is Cookie example.</h3>
	<form action = "cookieExample2.jsp" method="post">
		<fieldset>
			<input type = "radio" name="language" value="korea" id="korea">한국어 페이지 보기
			<input type = "radio" name="language" value="english" id="english">영어 페이지 보기
			<input type = "submit" value="설정">
			</fieldset>
		</form>
</body>
</html>