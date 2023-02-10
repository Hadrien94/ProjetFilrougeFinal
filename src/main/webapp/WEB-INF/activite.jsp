<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Ajouter une activité </title>
</head>
<body>

	<form action="activite" method="post">
		<div>
			<label for="nom"> Nom: </label> <input type=text name=nom id=nom>
		</div>
		<div>
			<label for="type"> Type: </label> <input type=text name=type id=type>
		</div>
		<div>
			<label for="lieu"> Lieu: </label> <input type=text name=lieu id=lieu>
		</div>
		<div>
			<label for="date"> Date: </label> <input type=text name=date id=date>
		</div>
		<div>
			<label for="heure"> Heure: </label> <input type=text name=heure id=heure>
		</div>
		<button> Enregistrer </button>
	</form>

</body>
</html>

