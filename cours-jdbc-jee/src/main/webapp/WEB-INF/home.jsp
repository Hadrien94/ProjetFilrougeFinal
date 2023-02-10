<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title> So Extreme </title>
  <link rel="stylesheet" href="style.css">
  <script src="script.js"></script>
</head>

<body>
	<div id="page">
		<div id="banniere">
			<h3> So Extreme    A PROPOS      FAQ        BLOG      CONTACT </h3>
			
			<button id="seConnecter"> SE CONNECTER </button>
			<button id="panier"> PANIER </button>
		</div>
		<div id="image">
			<%@include file="img/image1.jpg" %>
			<h3> VIVEZ L'AVENTURE EN FAMILLE! </h3>
			<input id="searchbar" type="text" placeholder="Rechercher une activité  |  N'importe où  |  date idéale">
			<button> C'est parti ! </button>
		</div>
	</div>
	
		<div id="menu">
		<h1> Rechercher par: </h1>
		 <ul>
				 <li>
					 <a href=" "> Saut en parachute </a>
					 <img src="img/parachute.png" alt="Saut en parachute">
				 </li>
				 <li>
					 <a href=" "> Saut à l'élastique </a>
					 <img src="img/elastique.png" alt="Saut à l'élastique">
				 </li>
				 <li>
					 <a href=" "> Canoe </a>
					 <img src="img/canoe.png" alt="Canoe">
				 </li>
				 <li>
					 <a href=" "> Escalade </a>
					 <img src="img/escalade.png" alt="Escalade">
				 </li>
				 <li>
					 <a href=" "> Accrobranche </a>
					 <img src="img/accrobranche.png" alt="Accrobranche">
				 </li>
				 <li>
					 <a href=" "> Chute libre en similateur </a>
					 <img src="img/chuteLibre.png" alt="Chute libre">
				 </li>
			</ul>
		</div><br><br><br>

		<div id="contenu">
			<img src="img/image2.png" alt="img" class="img" />
			<button> Réserver </button>
			<img src="img/image2.png" alt="img" class="img" />
			<button> Réservation </button>
			<img src="img/image2.png" alt="img" class="img" />
			<button> Réservation </button>
		</div><br><br><br><br><br>

		<footer class="footer">
		<div class="container">
		 <div class="row">
			 <div class="footer-col">
				 <h4> A propos de So extreme </h4>
				 <ul>
					 <li><a href="#">So extreme et son équipe</a></li>
					 <li><a href="#">Relations investisseurs</a></li>
					 <li><a href="#">Contactez-nous</a></li>
					 <li><a href="#">Presse</a></li>
				 </ul>
			 </div>
			 <div class="footer-col">
				 <h4>Ressources et règlements</h4>
				 <ul>
					 <li><a href="#">Notre contenu</a></li>
					 <li><a href="#">Politique de confidentialité</a></li>
					 <li><a href="#">CGU So Extreme</a></li>
					 <li><a href="#">Politique d'intégrité des contenus</a></li>
					 <li><a href="#">Chartre sur les cookies</a></li>
				 </ul>
			 </div>
			 <div class="footer-col">
				 <h4>Ecrire un avis</h4>
				 <ul>
					 <li><a href="#">Ajouter un lien</a></li>
					 <li><a href="#">S'inscrire</a></li>
					 <li><a href="#">Assistance</a></li>
					 <li><a href="#">Soutenir soextreme</a></li>
				 </ul>
			 </div>
			 <div class="footer-col">
				 <h4>Carrière</h4>
				 <ul>
					 <li><a href="#">Fiabilité du contenu</a></li>
					 <li><a href="#">Opérateurs touristiques</a></li>
					 <li><a href="#">Faites votre publicité avec nous</a></li>
					 <li><a href="#">Prenez le contrôle de votre page</a></li>
					 <li><a href="#">Retrouvez-nous sur discord</a></li>
				 </ul>
			 </div>
			 </div>
		 </div>
 </footer>
	
</body>
</html>

