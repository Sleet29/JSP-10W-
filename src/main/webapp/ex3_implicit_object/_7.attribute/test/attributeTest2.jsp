<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Attribute Test</title>
<style>
	body{text-align:center}
</style>
</head>
<body>
<h2>영역과 속성 테스트</h2>
<%
	String email = request.getParameter("eamil"); //데이터 읽어오기
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");

	session.setAttribute("email", email); 
	session.setAttribute("address", address);
	session.setAttribute("tel", tel);

%>
<h3><%=application.getAttribute("name") %>님의 정보가 모두 저장되었습니다.</h3>
<a href="attributeTest3.jsp">확인하러 가기</a>
</body>
</html>