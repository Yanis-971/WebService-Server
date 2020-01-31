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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
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
			<a class="nav-link active" href="#">Your ID:
				${sessionScope.User.getId()}</a> <a class="nav-link" href="#">
				Friends <span class="badge badge-pill bg-light align-text-bottom"><c:out
						value="${ nbf }" /></span>
			</a> <a class="nav-link" href="#">Link</a>
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
					<div class="my-3 p-3 bg-white rounded box-shadow overflow-auto"
						style="height: 350px">
						<h6 class="border-bottom border-gray pb-2 mb-0">Amis</h6>

						<c:forEach var="tab" items="${ tabs }">
							<c:choose>


								<c:when test="${ tab != null }">

									<div class="media text-muted pt-3">
										<!-- <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded"> -->
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


						<small class="d-block text-right mt-3"> <a href="#">Friend
								Request</a>
						</small>
					</div>

					<!--------------------- Fin Liste d'amis  ----------------------->

					<div class="my-3 p-3 bg-white rounded box-shadow">
						<h6 class="border-bottom border-gray pb-2 mb-0">Groupes</h6>
						<div class="media text-muted pt-3">
							<!--           <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
 -->
							<div
								class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
								<div
									class="d-flex justify-content-between align-items-center w-100">
									<strong class="text-gray-dark">Group Name</strong>
									<!--               <a href="#">Supprimer</a>
 -->
								</div>
								<span class="d-block">@username</span> <span class="d-block">@username</span>
							</div>
						</div>

						<small class="d-block text-right mt-3"> <a href="#">Group
								Up</a>
						</small>
					</div>
				</main>
			</div>

			<!------------------------------------------------------- Fin Partie Gauche  -------------------------------->

			<!--------------- Partie Discussion ----------------->
			<div class="card text-white bg-dark shadow col-md-9 my-3"
				style="height: 350px">
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
				</div>

				<div class="card-footer">
					<input>
					<button>Envoyer Message</button>
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

