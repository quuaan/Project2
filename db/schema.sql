\c nba_db

DROP TABLE IF EXISTS favPlayer;
DROP TABLE IF EXISTS favTeam;
DROP TABLE IF EXISTS user;

CREATE TABLE favPlayer (
  favPlayer_id SERIAL PRIMARY KEY,
  player_id INTEGER ,
  user_id INTEGER
);



CREATE TABLE favTeam (
  favTeam_id SERIAL PRIMARY KEY,
  team_id INTEGER,
  user_id INTEGER
);


CREATE TABLE user (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR (255),
  pssaword VARCHAR (255)

);



