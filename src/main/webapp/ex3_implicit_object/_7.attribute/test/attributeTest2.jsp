<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Test</title>
</head>
<body>
<h2>영역과 속성 테스트</h2>
<%
request.setCharacterEncoding("utf-8");
String email=request.getParameter("eamil"); //데이터 읽어오기
String address=request.getParameter("address");
String tel=request.getParameter("tel");
session.setAttribute("email", email); //세션 객체에 저장
session.setAttribute("address", address);
session.setAttribute("tel", tel);

String name=(String)application.getAttribute("name"); //getAttribute 의 리턴 타입은 Object 라서 (String) 앞에 붙여줌
%>
<h3><%=name %>님의 정보가 모두 저장되었습니다.</h3>
<a href="attributeTest3.jsp">확인하러 가기</a>
</body>
</html>