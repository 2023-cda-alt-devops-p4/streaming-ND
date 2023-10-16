CREATE TABLE movies(
   id_movies SERIAL,
   title VARCHAR(50) NOT NULL,
   release_date DATE NOT NULL,
   description VARCHAR(150) NOT NULL,
   PRIMARY KEY(id_movies)
);
CREATE TABLE actors(
   id_actors SERIAL,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   role VARCHAR(30),
   birthday DATE NOT NULL,
   PRIMARY KEY(id_actors)
);
CREATE TABLE movies(
   id_movies SERIAL,
   title VARCHAR(50) NOT NULL,
   release_date DATE NOT NULL,
   description VARCHAR(150) NOT NULL,
   PRIMARY KEY(id_movies)
);
CREATE TABLE realisator(
   id_realisator SERIAL,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   role VARCHAR(30),
   PRIMARY KEY(id_realisator)
);
CREATE TABLE archives(
   id_archives SERIAL,
   last_date DATE NOT NULL,
   new_date DATE NOT NULL,
   PRIMARY KEY(id_archives)
);
CREATE TABLE role(
   id_roles SERIAL,
   role VARCHAR(50),
   PRIMARY KEY(id_roles)
);
CREATE TABLE users(
   Id_users SERIAL,
   first_name VARCHAR(35) NOT NULL,
   last_name VARCHAR(40) NOT NULL,
   password VARCHAR(50) NOT NULL,
   id_roles INTEGER NOT NULL,
   PRIMARY KEY(Id_users),
   FOREIGN KEY(id_roles) REFERENCES role(id_roles)
);
CREATE TABLE favorite(
   id_movies INTEGER,
   Id_users INTEGER,
   id_archives INTEGER,
   PRIMARY KEY(id_movies, Id_users, id_archives),
   FOREIGN KEY(id_movies) REFERENCES movies(id_movies),
   FOREIGN KEY(Id_users) REFERENCES users(Id_users),
   FOREIGN KEY(id_archives) REFERENCES archives(id_archives)
);
CREATE TABLE play(
   id_actors INTEGER,
   id_movies INTEGER,
   PRIMARY KEY(id_actors, id_movies),
   FOREIGN KEY(id_actors) REFERENCES actors(id_actors),
   FOREIGN KEY(id_movies) REFERENCES movies(id_movies)
);
CREATE TABLE making(
   id_movies INTEGER,
   id_realisator INTEGER,
   PRIMARY KEY(id_movies, id_realisator),
   FOREIGN KEY(id_movies) REFERENCES movies(id_movies),
   FOREIGN KEY(id_realisator) REFERENCES realisator(id_realisator)
);
/* actors */
INSERT INTO actors (first_name, last_name, role, birthday)
values ('Johannes', 'Besset', 'actor', '2008-11-11');
INSERT INTO actors (first_name, last_name, role, birthday)
values ('JASON', 'STATAM', 'actor', '2092-01-11');
INSERT INTO actors (first_name, last_name, role, birthday)
values ('', 'Setterington', 'superviseur', birthday);
INSERT INTO actors (first_name, last_name, role, '2008,04, 11')
values (
      'Forrest',
      'Shera',
      'mannequin'
   );
INSERT INTO actors (first_name, last_name, role, birthday)
values ('Christoph', 'Sleicht', 'actor', '1998, 03,19');
/* movies */
INSERT INTO movies (id, title, release_date, description)
VALUES (
      'Le Seigneur des Anneaux: La Communauté de lAnneau',
      '2001,12,19',
      'Un film épique de fantasy basé sur le roman de J.R.R.Tolkien.'
   );
INSERT INTO movies (title, release_date, description)
VALUES (
      'Forrest Gump',
      '1994 -07 -06',
      'L histoire extraordinaire d un homme simple avec un cœur pur.'
   );
INSERT INTO movies (title, release_date, description)
VALUES (
      'Inception',
      '2010,07,16',
      'Un film de science - fiction réalisé par Christopher Nolan qui explore la manipulation des rêves.'
   );
INSERT INTO movies (title, release_date, description)
VALUES (
      'La La Land',
      '2016 -12 -25',
      'Une comédie musicale romantique mettant en vedette Ryan Gosling et Emma Stone.'
   );
INSERT INTO movies (title, release_date, description)
VALUES (
      'Pulp Fiction',
      '1994,09,23',
      'Un film culte de Quentin Tarantino avec une narration non linéaire et des personnages mémorables.'
   );
/* realisator */
INSERT INTO realisator (first_name, last_name, role)
values (' Chaddy ', ' Chaffey ', ' Surveyor ');
INSERT INTO realisator (first_name, last_name, role)
values (' Alejandro ', ' Warren ', ' Surveyor ');
INSERT INTO realisator (first_name, last_name, role)
values (
      'Sarina',
      'Peaddie',
      'realisator'
   );
INSERT INTO realisator (first_name, last_name, role)
values (' Corbett ', ' Barkus ', ' Architect ');
INSERT INTO realisator (first_name, last_name, role)
values (' Sher ', ' Signori ', ' Supervisor ');
/* archives */
INSERT INTO archives (last_date, new_date)
values ('12,30,2022 ', '4,19,2023 ');
INSERT INTO archives (last_date, new_date)
values ('12,28,2022 ', '4,14,2023');
INSERT INTO archives (last_date, new_date)
values ('11,10,2022', '6,30,2023');
INSERT INTO archives (last_date, new_date)
values ('6,7,2023', '1,26,2023');
INSERT INTO archives (last_date, new_date)
values ('7,27,2023', '2,14,2023');
/* role */
INSERT INTO role (id_archives, role)
values (1, ' admin ');
INSERT INTO role (id_archives, role)
values (2, ' Construction Worker ');
INSERT INTO role (id_archives, role)
values (3, ' Construction Worker ');
INSERT INTO role (id_archives, role)
values (4, ' Engineer ');
INSERT INTO role (id_archives, role)
values (5, ' admin ');
,
/* play */
INSERT INTO play (id_actors, id_movies)
values (1, 1);
INSERT INTO play (id_actors, id_movies)
values (2, 2);
INSERT INTO play (id_actors, id_movies)
values (3, 3);
INSERT INTO play (id_actors, id_movies)
values (4, 4);
INSERT INTO play (id_actors, id_movies)
values (5, 5);
/* making */
INSERT INTO making (id_movies, id_realisator)
values (1, 1);
INSERT INTO making (id_movies, id_realisator)
values (2, 2);
INSERT INTO making (id_movies, id_realisator)
values (3, 3);
INSERT INTO making (id_movies, id_realisator)
values (4, 4);
INSERT INTO making (id_movies, id_realisator)
values (5, 5);
/* favorite */
INSERT INTO favorite (id_movies, iD_users, id_archives)
values (1, 1, 1);
INSERT INTO favorite (id_movies, iD_users, id_archives)
values (2, 2, 2);
INSERT INTO favorite (id_movies, iD_users, id_archives)
values (3, 3, 3);
INSERT INTO favorite (id_movies, iD_users, id_archives)
values (4, 4, 4);
INSERT INTO favorite (id_movies, iD_users, id_archives)
values (5, 5, 5);