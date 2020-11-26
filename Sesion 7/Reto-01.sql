# SESION 7 - RETO 1: Realizando operaciones con tablas

CREATE DATABASE IF NOT EXISTS bedu_test;
USE bedu_test;

CREATE TABLE IF NOT EXISTS user (
    id_user INT PRIMARY KEY,
    gender char(1),
    age int,
    occupation int,
    zip_code varchar(20)
);

CREATE TABLE IF NOT EXISTS movie (
    id_movie INT PRIMARY KEY,
    title VARCHAR(120),
    genres VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS rating (
    id_user INT,
    id_movie INT,
    rating TINYINT,
    timestamp INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_movie) REFERENCES movie(id_movie)
);
