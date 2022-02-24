CREATE DATABASE shenanigans_db;
\c shenanigans_db

CREATE TABLE events(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT);

CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT, password_digest TEXT);

CREATE TABLE user_event(id SERIAL PRIMARY KEY, user_id TEXT, event_id TEXT); 

INSERT INTO events(name, image_url, date) VALUES ('3 DImensions', 'https://i.imgur.com/eRZPETv.jpg', '5th of March'),
('Dragon Dreaming', 'https://i.imgur.com/Rvu8ROM.jpg', '20th of March'),
('We Love', 'https://i.imgur.com/vE6IlDP.jpg', '4th of March'),
('VOYAGE', 'https://i.imgur.com/cnfXmpH.jpg', '5th of March');
