<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container-sm">
      <div class="row">
        <div class="col-6 mt-2 py-2 ">
          <img
            src="https://media.istockphoto.com/id/1189336762/photo/black-woman-typing-on-laptop-keyboard-while-working-in-office.jpg?s=612x612&w=0&k=20&c=KmudkyC1VzFmmucmwhLtxNdkepO5cBNEdZW9iqyzYkI="
            class="img-thumbnail"
            alt="Hollywood Sign on The Hill"
          />
        </div>

        <div class="col-6 mt-2 py-2">
          <div class="container col-md-8 col-md-offset-3" style="overflow: auto">
          <form action="<%=request.getContextPath()%>/login" method="post">
           <div class="form-group">
            <label for="uname">User Name:</label> <input type="text"
             class="form-control" id="username" placeholder="User Name"
             name="username" required>
           </div>
           <div class="form-group">
            <label for="uname">Password:</label> <input type="password"
             class="form-control" id="password" placeholder="Password"
             name="password" required>
           </div>
           <div class="mt-2" >
           <button type="submit" class="btn btn-primary">Connexion</button>
           </div>
           </form>
         </div>
        </div>
      </div>
</div>
</body>
</html>
