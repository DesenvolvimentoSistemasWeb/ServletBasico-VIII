<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored ="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Listagem</title>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>"/> 
</head>
<body>
    <div class="container">
    	<div class="jumbotron">
    		<h4>Sistemas Web</h4>
    	</div>
 		<div class="panel panel-default">
  	   		<div class="panel-body">
  	     		<p>Identificador: <%= pageContext.findAttribute("id") %></p><br>
  	     		<p>Nome: <%= pageContext.findAttribute("nome") %></p>
  	   		</div>
  		</div>
  		<a class="btn btn-primary" href="index.jsp">Voltar ao Início</a>
  		<%
  			//Limpa os atributos de qualquer tipo de escopo
  			pageContext.removeAttribute("id");
  			pageContext.removeAttribute("nome");
  		%>    	
    </div>	
</body>
</html>