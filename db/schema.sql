CREATE DATABASE shenanigans_db;
\c shenanigans_db

CREATE TABLE events(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, date TEXT);

CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT, password_digest TEXT);
