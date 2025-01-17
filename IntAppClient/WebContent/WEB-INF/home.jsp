<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!--  <link rel="icon" href="../../../../favicon.ico"> -->

<title>Home</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- Custom styles for this template -->
<link href="CSS/offcanvas.css" rel="stylesheet">
</head>

<body class="bg-light">

	<nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
		<a class="navbar-brand" href="#">IntApp Client</a>
		<button class="navbar-toggler p-0 border-0" type="button"
			data-toggle="offcanvas">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>


	<div class="nav-scroller bg-white box-shadow">
		<nav class="nav nav-underline">
			<p class="nav nav-link">Your ID:
				${sessionScope.User.getId()}</p> 
				<p class="nav nav-link">
				Friends <span class="badge badge-pill bg-light align-text-bottom"><c:out
						value="${ nbf }" /></span>
			</p> 
		</nav>
	</div>


	<!-------------------------- Container --------------------->
	<div class="container-fluid">
		<div class="row">

			<!---------------------- Partie Gauche ------------------------------->
			<div class="col-md-3">

				<main role="main" class="container">

					<div
						class="d-flex align-items-center p-3 my-3 text-white-50 bg-warning rounded box-shadow">
						<div class="lh-100">
							<h6 class="mb-0 text-white lh-100">${sessionScope.User.pseudo}</h6>
							<small>ID : ${sessionScope.User.id}</small>
						</div>
					</div>


					<!------------------------------------ Liste d'amis ------------------------->
					<div class="my-3 p-3 bg-white rounded box-shadow ">
						<h6 class="border-bottom border-gray pb-2 mb-0">Amis</h6>

						<c:forEach var="tab" items="${ tabs }">
							<c:choose>


								<c:when test="${ tab != null }">

									<div class="media text-muted pt-3">
										<p
											class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<strong class="d-block text-gray-dark"> <a
												href="/IntAppClient/Accueil?fpseudo=<c:out value="${ tab }" />">@<c:out
														value="${ tab }" />
											</a>
											</strong>
										</p>
									</div>

								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>

						</c:forEach>


						<small class="d-block text-right mt-3"> <a href="/IntAppClient/Adding?type=frd">Friend
								Request</a>
						</small>
					</div>

					<!--------------------- Fin Liste d'amis  ----------------------->
					<!--------------------- Fin Liste Groupe  ----------------------->
					<div class="my-3 p-3 bg-white rounded box-shadow">
						<h6 class="border-bottom border-gray pb-2 mb-0">Groupes</h6>
						
						<c:forEach var="gp" items="${ gps }">
							<c:choose>


								<c:when test="${ gp != null }">

									<p
											class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<strong class="d-block text-gray-dark"> <a
												href="/IntAppClient/Accueil?gpseudo=<c:out value="${ gp }" />">@<c:out
														value="${ gp }" />
											</a>
											</strong>
										</p>
										
										
								<!-- <span class="d-block">@username</span> <span class="d-block">@username</span> -->


								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>

						</c:forEach>
						
						<small class="d-block text-right mt-3"> <a href="/IntAppClient/Adding?type=grp">Group
								Up</a>
						</small>
					</div>
					
				<!--------------------- Fin Liste Groupe  ----------------------->
				</main>
			</div>

			<!------------------------------------------------------- Fin Partie Gauche  -------------------------------->

			<!--------------- Partie Discussion ---------------------------------------------------------------->
			<div class="card text-white bg-dark shadow col-md-9 my-3"
				style="height: 100%">
				<h5 class="card-header text-center">Discussion</h5>
				<div class="card-body overflow-auto">
				
				<c:forEach var="msg" items="${ msgs }">
							<c:choose>
								<c:when test="${ msg != null }">
									<p><c:out value="${ msg }" /></p>
								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>

						</c:forEach>
				</div>
				
				<div class="card-footer">
					
					<form action="Accueil" method="post">
					<div class="input-group mb-3" >
  						<input type="text" class="form-control" placeholder="Write a Message" aria-label="Write" aria-describedby="basic-addon2" id="input" name="input">
  						<div class="input-group-append" >
    						<button class="btn btn-outline-secondary" type="submit">Send Message</button>
  						</div>
  					</div>
  				</form>
					
				</div>
			</div>
		

				
			<!--------------- Fin Partie Discussion ----------------->



		</div>
	</div>
	<!--------------------------Fin Container --------------------->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script src="offcanvas.js"></script>
</body>
</html>

