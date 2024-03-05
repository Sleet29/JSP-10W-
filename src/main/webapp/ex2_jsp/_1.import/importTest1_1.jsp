<%-- (JSP �ּ�)
	JSP ���þ�(Directive)
	����) <%@ ..... %>
	JSP ���� ������ JSP�� ������ �����̳ʿ��� �ش� �������� ��� ó���� ���ΰ��� ���� ���� �������� ������ �ִµ� ���˴ϴ�.
	
	���þ��� ����)
	page ���þ� include ���þ�, taglib ���þ�
	
	1. page ���þ�
	JSP �������� ���� �Ӽ��� �����ϴ� ���þ��Դϴ�.
	����) <%@ page �Ӽ��� %>

	2. include ���þ�
	Ư���� JSP���� �Ǵ� HTML ������ �ش� JSP�������� ������ �� �ֵ��� �ϴ� ����� �����ϴ� ���þ��Դϴ�. ����) <%@ include file="���ϰ��" %>

	3. taglib ���þ�� JSTL(JSP Standard Tag Library)�̳�
	Ŀ���� �±� �� �±� ���̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ���˴ϴ�.
	����) <%@ taglib uri="http://taglib.com/sampleURI" prefix="samplePrefix" %>
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- (HTML �ּ�)
	1. contentType:
       JSP�������� �����ϴ� ������ ������ �� ������ �� �������� ������ �� ���Ǵ� ���ڵ� Ÿ���Դϴ�.
	   ������ ������ ������ ������ ���°� ��� MIME �������� �Ǿ� �ִ��� �����ϴ� �Ӽ��Դϴ�.

       MIME (Multipurpose Internet Mail Extensions)�� ���ͳ��� ���� ������ �ְ� ���� �� ���Ǵ� 
       ���� ������ ������ ���� ���Դϴ�.
	   ���� text/html, text/plain, image/gif, video/avi �� ���� ���� Ÿ���� �����մϴ�.

	2. charset=UTF-8�� ������ �� �ֽ��ϴ�.
	   ������ ��� �⺻ ĳ���ͼ��� ISO-8859-1�� ����ϰ� �˴ϴ�.

	3. pageEncoding : ���� �������� ���� ���ڵ� ����� ������ �� ����ϴ� �Ӽ��Դϴ�.
	   				  �� �Ӽ��� �����Ǿ� ���� ������ contentType �Ӽ����� ������ ���� �ڵ�� JSP������ �о� ���Դϴ�.
-->

<!DOCTYPE html>

<%-- SimpleDateFormatŬ���� ������� import �Ӽ��� �̿��մϴ�.
	 import �Ӽ� : JSP ���������� ����� Ŭ����(�������̽�) ���� �մϴ�. 
	 			  �������� ������ ��� �޸��� �����Ͽ� ǥ���� �� �ֽ��ϴ�.
	 			  
	 <%@page import="java.text.SimpleDateFormat java.util.*"%>
--%>	 
<%@page import="java.text.SimpleDateFormat"%>

<%-- Date Ŭ���� ����� ���� import --%>
<%@page import="java.util.*"%>

<html>
<head>
<title>import �Ӽ� �׽�Ʈ</title>
</head>
<body>
<h1> ���� �ð��� <%=new SimpleDateFormat().format(new Date()) %>�Դϴ�.</h1>
</body>
</html>