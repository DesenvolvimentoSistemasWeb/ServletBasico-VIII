<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored ="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>"/> 
	<title>Validação</title>
</head>
<body>
    <div class="container">
    	<div class="jumbotron">
    		<h4>Sistemas Web</h4>
    	</div>
    	<%
		  	//Pegando os dados da requisição (escopo de requisição - request)
		  	request.setCharacterEncoding("UTF-8");
		  	String id = request.getParameter("id");
		  	String nome = request.getParameter("nome");
		  	
		  	//Jogando os valores dentro da sessão - escopo de sessão
		  	pageContext.setAttribute("id",id,PageContext.SESSION_SCOPE);
		  	pageContext.setAttribute("nome",nome,PageContext.SESSION_SCOPE);
		  	
		%>
  		<div class="panel panel-default">
  	   		<div class="panel-body">
  	     		<p>Identificador: <%= pageContext.findAttribute("id") %></p><br>
  	     		<p>Nome: <%= pageContext.findAttribute("nome") %></p>
  	   		</div>
  		</div>
		<a class="btn btn-primary" href="listar.jsp">Mostrar Valores</a>
	</div>
</body>
</html>