<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored ="false" %> 
<%@ page import="java.util.logging.Logger" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>"/> 
	<title>Cadastrar</title>
</head>
<body>
	<%
		Logger logger = Logger.getLogger(this.getClass().getName());
	%>
    <div class="container">
    	<div class="jumbotron">
    		<h4>Sistemas Web</h4>
    	</div>
    	<form action="validacao.jsp" class="form horizontal" method="post">
    		<div class="form-group row">
    			<label class="col-sm-2"> Digite um identificador:</label>
    			<div class="col-sm-10">
    				<input class="form-control" type="text" name="id">
    			</div>
    		</div>
    		<div class="form-group row">
    			<label class="col-sm-2">Digite um nome:</label>
    			<div class="col-sm-10">
    				<input class="form-control" type="text" name="nome">
    			</div>
    		</div>
    		<div class="form control">
    			<input class="btn btn-primary" type="submit" value="Login">
    		</div>
    	</form>
    	<%
    		logger.info("Cadastro foi realizado!!");
    	%>
    </div>
</body>
</html>