<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

			<h1> Identifiez vous </h1>
	

	<form action="login" method="post">
		<div>
			<label for="login"> Login(email): </label> <input type=text name=login id=login>
		</div>
		<div>
			<label for="mdp"> Mot de passe: </label> <input type=password name=mdp id=mdp>
		</div>
		<button> Enregistrer </button>
	</form>
	
	<p> Pas encore de compte ?
	<a href=" "> Inscrivez-vous </a>
	
	<a href=" "> Mot de passe oublié ? </a>

</body>
</html>