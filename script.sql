CREATE TABLE actors(
   id_actors INT,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   role VARCHAR(30),
   PRIMARY KEY(id_actors)
);
CREATE TABLE movies(
   id_movies COUNTER,
   title VARCHAR(50) NOT NULL,
   release_date DATE NOT NULL,
   description VARCHAR(150) NOT NULL,
   PRIMARY KEY(id_movies)
);
CREATE TABLE realisator(
   id_realisator COUNTER,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   role VARCHAR(30),
   PRIMARY KEY(id_realisator)
);
CREATE TABLE users(
   id_users COUNTER,
   first_name VARCHAR(35) NOT NULL,
   last_name VARCHAR(40) NOT NULL,
   password TEXT NOT NULL,
   role VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_users)
);
CREATE TABLE roles(
   id_roles COUNTER,
   role VARCHAR(30),
   PRIMARY KEY(id_roles)
);
CREATE TABLE favoris(
   id_favoris COUNTER,
   PRIMARY KEY(id_favoris)
);
CREATE TABLE archives(
   id_archives VARCHAR(50),
   last_date DATE NOT NULL,
   new_date DATE NOT NULL,
   PRIMARY KEY(id_archives)
);
CREATE TABLE favorite(
   id_movies INT,
   id_users INT,
   id_favoris INT,
   id_archives VARCHAR(50),
   PRIMARY KEY(id_movies, id_users, id_favoris, id_archives),
   FOREIGN KEY(id_movies) REFERENCES movies(id_movies),
   FOREIGN KEY(id_users) REFERENCES users(id_users),
   FOREIGN KEY(id_favoris) REFERENCES favoris(id_favoris),
   FOREIGN KEY(id_archives) REFERENCES archives(id_archives)
);
CREATE TABLE play(
   id_actors INT,
   id_movies INT,
   PRIMARY KEY(id_actors, id_movies),
   FOREIGN KEY(id_actors) REFERENCES actors(id_actors),
   FOREIGN KEY(id_movies) REFERENCES movies(id_movies)
);
CREATE TABLE making(
   id_movies INT,
   id_realisator INT,
   PRIMARY KEY(id_movies, id_realisator),
   FOREIGN KEY(id_movies) REFERENCES movies(id_movies),
   FOREIGN KEY(id_realisator) REFERENCES realisator(id_realisator)
);
CREATE TABLE role(
   id_users INT,
   id_roles INT,
   PRIMARY KEY(id_users, id_roles),
   FOREIGN KEY(id_users) REFERENCES users(id_users),
   FOREIGN KEY(id_roles) REFERENCES roles(id_roles)
);
/*   actors  */
insert into actors (id_actors, first_name, last_name, role)
values (1, 'Johannes', 'Besset', 'actor');
insert into actors (id_actors, first_name, last_name, role)
values (2, 'Ad', 'Makin', 'actor');
insert into actors (id_actors, first_name, last_name, role)
values (3, 'Zorana', 'Setterington', 'superviseur');
insert into actors (id_actors, first_name, last_name, role)
values (4, 'Forrest', 'Shera', 'Construction Expeditor');
insert into actors (id_actors, first_name, last_name, role)
values (5, 'Christoph', 'Sleicht', 'actor');
/*   movies  */
insert into movies (id_movies, title, release_date, description)
values (
      1,
      'Help Desk Operator',
      '2/26/2023',
      'Occlusion of Right Femoral Vein with Intraluminal Device, Percutaneous Approach'
   );
insert into movies (id_movies, title, release_date, description)
values (
      2,
      'Research Assistant IV',
      '8/16/2023',
      'Dilation of Left Foot Artery, Bifurcation, with Drug-eluting Intraluminal Device, Percutaneous Approach'
   );
insert into movies (id_movies, title, release_date, description)
values (
      3,
      'VP Marketing',
      '6/12/2023',
      'Extirpation of Matter from Right Upper Extremity Lymphatic, Percutaneous Endoscopic Approach'
   );
insert into movies (id_movies, title, release_date, description)
values (
      4,
      'Associate Professor',
      '7/25/2023',
      'Planar Nuclear Medicine Imaging of Heart using Other Radionuclide'
   );
insert into movies (id_movies, title, release_date, description)
values (
      5,
      'Web Designer III',
      '5/2/2023',
      'Removal of Nonautologous Tissue Substitute from Right Pelvic Bone, Open Approach'
   );
/*   realisator  */
insert into realisator (id_realisator, first_name, last_name, role)
values (1, 'Chaddy', 'Chaffey', 'Surveyor');
insert into realisator (id_realisator, first_name, last_name, role)
values (2, 'Alejandro', 'Warren', 'Surveyor');
insert into realisator (id_realisator, first_name, last_name, role)
values (3, 'Sarina', 'Peaddie', 'Construction Worker');
insert into realisator (id_realisator, first_name, last_name, role)
values (4, 'Corbett', 'Barkus', 'Architect');
insert into realisator (id_realisator, first_name, last_name, role)
values (5, 'Sher', 'Signori', 'Supervisor');
/*   archives  */
insert into archives (id_archives, last_date, new_date)
values (1, '12/30/2022', '4/19/2023');
insert into archives (id_archives, last_date, new_date)
values (2, '12/28/2022', '4/14/2023');
insert into archives (id_archives, last_date, new_date)
values (3, '11/10/2022', '6/30/2023');
insert into archives (id_archives, last_date, new_date)
values (4, '6/7/2023', '1/26/2023');
insert into archives (id_archives, last_date, new_date)
values (5, '7/27/2023', '2/14/2023');
/*   role  */
insert into role (id_archives, role)
values (1, 'admin');
insert into role (id_archives, role)
values (2, 'Construction Worker');
insert into role (id_archives, role)
values (3, 'Construction Worker');
insert into role (id_archives, role)
values (4, 'Engineer');
insert into role (id_archives, role)
values (5, 'admin');
/*   play  */
insert into play (id_actors, id_movies)
values (1, 1);
insert into play (id_actors, id_movies)
values (2, 2);
insert into play (id_actors, id_movies)
values (3, 3);
insert into play (id_actors, id_movies)
values (4, 4);
insert into play (id_actors, id_movies)
values (5, 5);
/*   making  */
insert into making (id_movies, id_realisator)
values (1, 1);
insert into making (id_movies, id_realisator)
values (2, 2);
insert into making (id_movies, id_realisator)
values (3, 3);
insert into making (id_movies, id_realisator)
values (4, 4);
insert into making (id_movies, id_realisator)
values (5, 5);
/*   favorite  */
insert into favorite (id_movies, iD_users, id_archives)
values (1, 1, 1);
insert into favorite (id_movies, iD_users, id_archives)
values (2, 2, 2);
insert into favorite (id_movies, iD_users, id_archives)
values (3, 3, 3);
insert into favorite (id_movies, iD_users, id_archives)
values (4, 4, 4);
insert into favorite (id_movies, iD_users, id_archives)
values (5, 5, 5);