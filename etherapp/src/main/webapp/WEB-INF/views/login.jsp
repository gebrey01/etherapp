<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<spring:url value="/resources/stylesheets/login.css" var="mainCss" />
		<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrap" />
		<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJs" />
		<spring:url value="/resources/images" var="imgPath" />
		<spring:url value="/resources/js/jquery-3.1.1.min.js" var="jqueryJs" />
		
	    
	    <link rel="stylesheet" type="text/css" href="${mainCss}">
	    <link rel="stylesheet" type="text/css" href="${bootstrap}">
	    <script type="text/javascript" language="javascript" src="${jqueryJs}"></script>
	    <script type="text/javascript" language="javascript" src="${bootstrapJs}"></script>
	    
	    
	    <script type="text/javascript">
	    
	    	$(document).ready(function(){
	    		
	    		$("#showPass").click(function(){
	    			
	    			$("#eye").attr("class",($("#eye").attr("class")==='glyphicon glyphicon-eye-open'?'glyphicon glyphicon-eye-close':'glyphicon glyphicon-eye-open'));
	    				    			    			
	    			$("#password").attr("type",($("#password").attr("type")==='password'?'text':'password'));
	    		});
	    		
	    	}); 
	    	
	    </script>   
	    
    </head>
    
    <body>
    
			    <div class="container" style="margin-top:40px">
			    	<div class="row">
						<div class="col-sm-6 col-md-4 col-md-offset-4">
							<div class="panel panel-default">
								<div class="panel-heading">
									<strong> Sign in to continue</strong>
								</div>
								<div class="panel-body">
									<form:form role="form" action="/login" method="POST">
										<fieldset>
											<div class="row">
												<div class="center-block">
													<img class="profile-img"
														src="${imgPath}/profile.png" alt="">
												</div>
											</div>
											<div class="row">
												<div class="col-sm-12 col-md-10  col-md-offset-1 ">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon">
																<i class="glyphicon glyphicon-user"></i>
															</span> 
															<input class="form-control" placeholder="Username" name="loginname" type="text" autofocus>
														</div>
													</div>
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon">
																<i class="glyphicon glyphicon-lock"></i>
															</span>
															<input class="form-control" placeholder="Password" id="password" name="password" type="password" value="">
															<span class="input-group-addon" id="showPass">
																<i id="eye" class="glyphicon glyphicon-eye-open"></i>
															</span>												
														</div>
													</div>										
													<div class="form-group">
														<input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
													</div>
												</div>
											</div>
										</fieldset>
									</form:form>
								</div>
								<div class="panel-footer ">
									<br/>						
								</div>					
			                </div>
						</div>
					</div>
				</div>
	</body>
	
</html>