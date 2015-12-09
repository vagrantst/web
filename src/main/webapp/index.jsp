<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<c:url var="bootstrap"
	value="/node_modules/bootstrap/dist/css/bootstrap.css" />
<c:url var="jquery" value="/node_modules/jquery/dist/jquery.js"></c:url>

<link rel="stylesheet" href="${bootstrap}" /><!-- 클라이언트에서 구동 -->
<script type="text/javascript" src="${jquery}"></script>


<title>index.jsp</title>
<style type="text/css">
	@keyframes xxx {
		from {
			opacity : 0.0;
		}
		
		
		to {
			background-color:red;
			opacity :1.0;
			transform : rotateX(360deg);
		}
	}
	
	h1 {
		animation :xxx 5s;
	}

</style>

</head>
<body>
<h1>
Virtual Tomcat Test
</h1>
<ol>
	<li><a class="btn btn-default" href="map/map2.jsp">map2.jsp</a></li>
	<li><a class="btn btn-primary"  href="map/myLocation.jsp">myLocation.jsp</a></li>
	<li></li>
	<li></li>
	
</ol>
</body>
</html>