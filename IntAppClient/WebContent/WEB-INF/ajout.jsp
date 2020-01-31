<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="../../../../favicon.ico"> -->

    <title>Requests</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="CSS/floating-labels.css" rel="stylesheet">
  </head>

  <body>
  <form class="form-signin" action="Adding" method="post">
  <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Friend Request</h1>
        <p>Add a friend!</p>
      </div>

    <div class="form-label-group">
        <input type="Username" id="inputUsername" class="form-control" placeholder="Username" name="pseudo" required autofocus>
        <label for="inputUsername">Username</label>
      </div>

           <button class="btn btn-lg btn-primary btn-block" type="submit">Adding up</button>


    </form>
  </body>
</html>