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
