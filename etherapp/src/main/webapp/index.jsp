<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="WEB-INF/views/inc/page_declares.inc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta http-equiv="refresh" content="6;url=welcome" />
		
		<spring:url value="/resources/stylesheets/login.css" var="loginCss" />
		<spring:url value="/resources/stylesheets/animations.css" var="loginCss" />
		<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrap" />
		<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJs" />
		<spring:url value="/resources/js/jquery-3.1.1.min.js" var="jqueryJs" />		
		
	    <link rel="stylesheet" type="text/css" href="${bootstrap}">
	    <link rel="stylesheet" type="text/css" href="${loginCss}">
	    <link rel="stylesheet" type="text/css" href="${animationsCss}">
	    	    
	
		<script type="text/javascript" src="${jqueryJs}"></script>
		<script type="text/javascript" src="${bootstrapJs}"></script>		
		
	</head>
	
	<body>	
		
		  
		<center>		
		<div class="loading">
			<h4 class="blink">Loading...........</h4>  									
	  		<div class="progress center" style="width:65%">	  			
	    		<div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" style="width: 100%;"></div>
	  		</div>
		</div>
		</center>
		
	</body>
</html>