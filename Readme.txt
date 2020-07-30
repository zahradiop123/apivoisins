Startup Entrevoisins

Objectifs:
•	Développer un réseau commercial pour que des voisins puissant faire connaissance
•	Mettre en place un Backend décrivant les fonctionnalités de l’application tels que :
	Ajouter un voisin
	Lister les voisins
	Voir les details d’un voisin
	Marquer comme favoris
Prérequis :
J’ai utilise:
	Postman
	Yarn
	DbBrowser
	Visual Code
	Rails
Travail réalisé :
J’ai cree une application nommée projetweb sur l’invite de commande avec la commande : rails new projetweb. Je me suis placé à la racine avec la commande : cd projetweb.
Et j’ai tapé les commandes suivantes :
	rails g scaffold Voisin name: string number: integer address: string about: text favory: Boolean
	rails db:create : créer une base de données vide
	rails db:migrate : migrer vers la base de données
	pour tester: http://localhost:3000/voisin
J’ai cree un compte Github d’où j’ai mis le code source de l’API. En créant :
	create repository git commit -m "first commit" : Lorsque vous modifiez votre repository, vous devez demander à Git d'enregistrer vos modifications en faisant un git commit.
Nom: api-voisins
	Au niveau du Git Bash, j’ai tapé des commandes fournies tels que :
	git --version : Pour afficher la version de git bash existant
	cd api-voisin/ : Pour se déplacer dans le répertoire de notre application
	git init : Crée un dépôt Git. Elle permet de convertir un projet existant, sans version en un dépôt Git ou d'initialiser un nouveau dépôt vide
	git status : Utilisée pour obtenir un récapitulatif des fichiers dont les modifications sont préparées pour la prochaine validation.
	git add . : Pour "ajouter" de manière incrémentielle les modifications à l'index avant d'utiliser la commande commit (Remarque: même les fichiers modifiés doivent être "ajoutés");
	git remote add origin: Pour ajouter un nouveau serveur distant, nous avons utilisé la commande "git remote add" sur le terminal, dans le répertoire où votre référentiel est stocké.
	git push -u origin master : est utilisé pour pousser le contenu local vers Github.
J’ai utilisé dbBrowser pour voir si la base donnée est cree en important le fichier <development.sqlite3> cree.
Pour démarrer l’Application, j’ai utilisé les URLs des API dans le Postman que j’ai envoyé au serveur allume afin d’obtenir les réponses correspondants.
Pour Ajouter voisins : http://localhost:3000/api/new
Pour voir les detailsvoisins : http://localhost:3000/api/detailsvoisins/2
Pour lister les voisins : http://localhost:3000/api/listevoisins
Pour marquer un voisin favory : http://localhost:3000/api/listevoisinsfavoris
 
Auteur :
Fatimata Zahra Diop

