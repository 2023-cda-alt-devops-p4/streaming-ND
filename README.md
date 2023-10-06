# Plateforme de streaming

Contexte du projet
En tant que développeur passionné par le cinéma, vous avez toujours été fasciné par la magie du grand écran. Cette passion ne se limite pas seulement à regarder des films. Vous avez toujours été curieux de connaître les coulisses, d'étudier qui a joué dans tel film, qui l'a réalisé, et comment ces chefs-d'œuvre ont été créés. Vous trouvez aussi que les plateformes de streaming sont un formidable accès à un catalogue d'oeuvres de toute sorte à découvrir. Vous avez donc envie de créer, vous aussi, votre propre plateforme de streaming sur votre temps libre. Mais comme Rome ne s'est pas construite en un jour, vous voulez commencer par la mise en place d'un site web permettant de procéder à différentes opérations de recherches à propos de films, d'acteurs/actrices ou de réalisateurs. Sauf que. La partie site web n'est pas pour tout de suite 😃 Avant celà, vous avez besoin d'une base de données pour le stockage. Et donc de la concevoir et la mettre en place! A vous de jouer 🙂​

# Contraintes
Le noSQL (MongoDB...) n'est pas autorisé

Vous devez créer votre propre environnement Docker

Un trigger doit être mis en place, également appelé déclencheur

Seul l'administrateur de la BDD pourra ajouter, modifier ou supprimer des données.

Pour chaque entrée dans la base de données, il y aura la date de création et de modification.

Deadline
4 jours.

# Modalités d'évaluation
Correction entre pairs.
Vos requêtes seront testées en local après l'importation de votre environnemnt docker.

# Mise en place 

J'ai crée un container docker ou j'ai relier une image ( postgres ) obtenu sur docker hub  qui contient ma conception de ma base de donnés streaming. Pour l'analyse et la rélexion de ma BDD je me suis aidez du logiciel Looping pour crée mon MCD , MLD. Pour remplir ma database j'ai utilisez un mock qui me fournissez des datas toute config en lui passant mes informations.

# Commandes SQL

les titres et dates de sortie des films du plus récent au plus ancien

SELECT title, release_date
FROM movies
ORDER BY release_date DESC

ajouter un film:

INSERT INTO movies ( title, length, releaseDate) VALUES ('Nouveau film', '2023-10-05');


ajouter un actors:

INSERT INTO actors (first_name, last_name, role) VALUES ('Nouvel', 'Acteur', 'actors');

Supprimer un actors 
DELETE FROM actors
WHERE first_name = 'Jason' AND  last_name= 'STATAM';


