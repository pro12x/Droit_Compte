 <!DOCTYPE html>
 <html lang="en">
 <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
 <head>
   <title>Bootstrap Example</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 </head>
 <body>
<center>
  <h1>Formulaire de création de comptes</h1>
        <h2>
            <a href="/compte">Liste compte</a>
        </h2>
 </center>
 <div class="container">
   <h2>COMPTES</h2>
   <div class="panel panel-primary">
     <div class="panel-heading">TP MAVEN </div>
     <div class="panel-body">
           <div align="center">
                   <form method="post" action='compte' autocomplete="off" style="font-family:Roboto;">
                       <% if(request.getAttribute("success") != null){%>
                           <div class="row">
                               <div class="col-md-12">
                                   <span class='text-danger'><%= request.getAttribute("success") %></span>
                               </div>
                           </div>
                       <%}%>
                       <%if(request.getAttribute("error") != null){%>
                           <div class="row">
                               <div class="col-md-12">
                                   <span class='text-danger'><%= request.getAttribute("error") %></span>
                               </div>
                           </div>
                       <%}%>
                   	<div class="row">
                   		<div class="col-md-6" align="center">
                   		           <div class="form-group">
                                    <label for="uname">User Name:</label> <input type="text"
                                     class="form-control" id="username" placeholder="User Name"
                                     name="username" required>
                                   </div>

                                   <div class="form-group">
                                    <label for="uname">role:</label>
                                     <select class="form-control" name="role">
                                               <c:forEach var="item" items="${listDroit}">
                                                 <option value="${item.id}"><c:out value="${item.name}" /></option>
                                               </c:forEach>
                                     </select>
                                    </div>

                                   <div class="form-group">
                                    <label for="uname">Password:</label> <input type="password"
                                     class="form-control" id="password" placeholder="Password"
                                     name="password" required>
                                   </div>
                                   <div class="mt-2" >
                                   <button type="submit" class="btn btn-primary">Connexion</button>
                   		           </div>
                   		</div>
                   	</div>
                   </form>
               </div>
     </div>
     <div class="panel-footer">BY YOUNGER</div>
   </div>
 </div>

 </body>
 </html>
