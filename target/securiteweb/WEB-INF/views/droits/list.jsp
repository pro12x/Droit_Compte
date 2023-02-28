<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<header>
<body>
<center>
  <h1>Gestion des droits</h1>
        <h2>
            <a href="/droit?param=add">Ajouter un nouveau role</a><br>
            <a href="/compte">Gestion des comptes</a>
        </h2>

        <h5>
            <a href="/logout" style="color:red">Se deconnecter</a>
        </h5>
 </center>
<div class="container col-md-8 col-md-offset-1">
    <div class="panel panel-primary">
      <div class="panel-heading"><h2>Liste des droits</h2></div>
        <div class="panel-body" align="center">
         <table class="table table-stripe">
			 <tr class="text-center">
				<th>ID</th>
				<th>ROLE</th>
				<th>Actions</th>
				</tr>
			    <c:forEach var="droit" items="${listDroits}">
				<tr class="text-center">
				<td><c:out value="${droit.id}" /></td>
				<td><c:out value="${droit.name}" /></td>
				<td>
                   <a class="btn btn-primary" href="edit?id=<c:out value='${droit.id}' />">Edit</a>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;
                   <a class="btn btn-danger" href="delete?id=<c:out value='${droit.id}' />">Delete</a>
                </td>
				</tr>
				</c:forEach>
         </table>
        </div>
    </div>
</div>
</body>
</html