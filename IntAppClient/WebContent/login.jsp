<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="model.Utilisateur"%>
	<%@page import="model.UtilisateurProxy"%>
    

<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   <!--  <link rel="icon" href="../../../../favicon.ico"> -->

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


    <!-- Custom styles for this template -->
    <link href="CSS/floating-labels.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin" action="Connexion" method="post" >
      <div class="text-center mb-4">
<!--         <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
 -->        <h1 class="h3 mb-3 font-weight-normal">IntApp Client</h1>
        <p>Connectez-vous !</p>
      </div>

      <div class="form-label-group">
        <input type="text" id="inputUsername" class="form-control" placeholder="Username" name="pseudo" required autofocus>
        <label for="inputUsername">Username</label>
      </div>

      <div class="form-label-group">
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pswd" required>
        <label for="inputPassword">Password</label>
      </div>

      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
      <p class="mt-5 mb-3 text-muted text-center">2020</p>
    </form>
  </body>
</html>
