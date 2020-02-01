
Groupe 2 - NARANIN Ritchie, BENIN Yanis, BEAUCHENE Quentin, GROS-DESIR Frédérick
Messagerie instantanée

Backend
Gestion BD/Requêtes connexion/etc.
Frédérick Gros-désir -  frederickgrosdesir@icloud.com
Ritchie Naranin - ritchienaranin@gmail.com

Frontend
Ensentiellement Vue/connexions tranverses/etc.
Yanis Benin - yanis.benin@gmail.com
Quentin Beauchêne - beauchene.quentin@gmail.com

Technologies utilisées Front/backend:
- Java avec IDE Eclipse 2019-12
- Apache Tomcat 8.5
- MariaDB 
- Librairie taglibs, pour intégrer le JSTL aux pages
- Html/CSS
- JavaScript
- BootStrap 4.0

Lien Git du projet : https://github.com/Yanis-971/WebService-Server.git


Difficultés rencontrées lors du développement :

Problème rencontré avec les Web services de type Jax RPC (pour permettant de transmettre des messages SOAP en mode RPC) car ce type de service ne prend pas en compte les types listes. Après s'être penché dessus, on s'est rendu compte que les Web services qui prennent en compte les types listes sont Jax-WS. À cause de cela, nous avons perdu énormement de temps pour migrer de Jax RPC à Jax-ws. En ne pouvant pas utiliser les types listes, ça nous était impossible de créer des objets et de les envoyer directement dans la Vue. Ducoup, pour contourner ce problème et pouvoir délivrer un projet opérationnel, on a dû utiliser des types Tableaux pour envoyer les éléments qui nous étaient nécessaires. Le soucis c'est que même en utilisant les tableaux on n'arrivait toujours pas à placer des objets dans le tableau, au niveau de la Vue c'est vide.
On était obliger de faires des services JSR qui étaient obligatoires. Il ne pouvait pas utiliser des types listes, c'était déjà obsolète. C'est pour celà qu'on a dû utiliser des tableaux pour tout. On pouvait pas créer de constructeur dans la partie Client, les JSR ne le permettaient pas. On a finalement fait comme on peut pour récupérer les paramètres des classes de bases qui sont dans les services.

Concernant le Jax-Ws en détail, on avait besoin d'une ibrairie, le cxf 2. Par la suite une fois télécharger, le java runtime ne fonctionnait pas avec le JDK (13.0.2). On a essayé avec la libraire JRE 1.8, le runtime se lançait mais les services ne fonctionnaient pas.
Alors on essayé de faire 2 types de services :
1 - Service a partir de classe Java ( comme on fait d'habitude).
2 - Par l'intermédaires d'implémentation d'interfaces Java.
Une fois le service crée, à ce moment là les méthodes ne fonctionnaient plus. On a dû modifier le XLM du CXF et retirer les imports pour que le service fonctionne. Et après ça fonctionnait toujours pas par ce que le WDSL ne se créait pas. C'était surement dû à un problème dans la fonction "Bottom to top java bean".

Concernant la Partie Client :
- on a créé des servlet,
- on a créé des JSP,
- on a modifié le web_xml pour que cela fonctionne
- Comme avec les services on ne pouvait pas échangé de données. On a du faire passer les données entre pages par l'intermédiaire de l'URL du site.
