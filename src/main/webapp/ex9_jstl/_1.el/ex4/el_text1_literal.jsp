<%-- 리터럴 표현식 : EL 블록(${})에서 사용할 수 있는 값은
	 문자열, 정수, 부동소수점, boolean, null 가능합니다.  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리터럴 표현식</title>
</head>
<body>
	문자열 : ${"test" } <br>
	문자열 : ${'test' } <br>
	
 <%-- 자바의 +는 사용할 수 없다. 아래처럼 ${}를 붙여서 사용한다. --%>
 	문자열 연결 : ${'test'}${'test2'} <br>
 	
 	<%-- 에러 발생합니다.
 	  문자열 연결 : ${'test' + 'test2'} <br>
 	--%>
 	
 	<%-- "\"를 출력하려면 두 개를 사용해야함 --%>
 		문자열 : ${'\\test' }<br>
 		정수 : ${20}<br>
 		부동소숫점 : ${3.14}<br>
 		boolean : ${true}<br>
 		null : ${null}<br>
</body>
</html>