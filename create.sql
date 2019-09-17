CREATE DATABASE company;
USE company

CREATE TABLE Artiste(
id_artiste int PRIMARY KEY,
prenom_artiste text,
nom_artiste text,
role_Role text
);
INSERT INTO Artiste (id_artiste, prenom_artiste, nom_artiste, role_Role)
VALUES (11, 'John', 'Travolta', 'Vincent Vega') ;

CREATE TABLE Role (
idArtiste_Role int,
idFilm_Role int,
idRealFilm_Role int
);
INSERT INTO Role (idArtiste_Role, idFilm_Role, idRealFilm_Role)
VALUES (27, 17, 37);

CREATE TABLE Film (
annee_Film int,
titre_Film text,
id_Film int
);
INSERT INTO Film (annee_Film, titre_Film, id_Film)
VALUES (1994, 'Pulp Fiction', 17);
