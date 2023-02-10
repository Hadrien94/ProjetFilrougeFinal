<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Créer un compte </title>
</head>
<body>

	<h1> Créer votre compte </h1>
	
	
	<form action="personne" method="post">
		<div>
			<label for="nom"> Nom: </label> <input type=text name=nom id=nom>
		</div>
		<div>
			<label for="prenom"> Prénom: </label> <input type=text name=prenom id=prenom>
		</div>
		<div>
			<label for="dateNaissance"> Date de naissance: </label> <input type=text name=dateNaissance id=dateNaissance>
		</div>
		<div>
			<label for="adresse"> Adresse: </label> <input type=text name=adresse id=adresse>
		</div>
		<div>
			<label for="telephone"> Telephone: </label> <input type=text name=telephone id=telephone>
		</div>
		<button> Enregistrer </button>
	</form>
	
	<%--
	<h2> Liste de personnes </h2>
	<ul>
		<c:forEach items="${ personnes }" var="elt">
		<li>${ elt.prenom } -- ${ elt.nom } -- 
			<a href="supprimerPersonne?num=${ elt.num }"> Supprimer </a>
			<a href="modifierPersonne?num=${ elt.num }"> Modifier </a>
		</li>
		</c:forEach>
	</ul>
	--%>
	
</body>
</html>