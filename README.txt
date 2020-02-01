
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


Technologies utilisées:
- Java avec IDE Eclipse 2019-12
- Apache Tomcat 8.5
- MariaDB 


Difficultés rencontrées lors du développement :

Problème rencontré avec les Web services de type Jax RPC (pour permettant de transmettre des messages SOAP en mode RPC) car ce type de service ne prend pas en compte les types listes. Après s'être penché dessus, on s'est rendu compte que les Web services qui prennent en compte les types listes sont Jax-WS. À cause de cela, nous avons perdu énormement de temps pour migrer de Jax RPC à Jax-ws. En ne pouvant pas utiliser les types listes, ça nous était impossible de créer des objets et de les envoyer directement dans la Vue. Ducoup, pour contourner ce problème et pouvoir délivrer un projet opérationnel, on a dû utiliser des types Tableaux pour envoyer les éléments qui nous étaient nécessaires. Le soucis c'est que même en utilisant les tableaux on n'arrivait toujours pas à placer des objets dans le tableau, au niveau de la Vue c'est vide.
On était obliger de faires des services JSR qui étaient obligatoires. Il ne pouvait pas utiliser des types listes, c'était déjà obsolète. C'est pour celà qu'on a dû utiliser des tableaux pour tout. On pouvait pas créer de constructeur dans la partie Client, les JSR ne le permettaient pas. On a finalement fait comme on peut pour récupérer les paramètres des classes de bases qui sont dans les services.
