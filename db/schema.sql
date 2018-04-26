\c nba_db

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS users;


CREATE TABLE players (
  playerId SERIAL PRIMARY KEY,
  firstName VARCHAR(255),
  lastName VARCHAR(255),
  fullName VARCHAR(500),
  teamTableId INT REFERENCES nbaTeams(teamTableId),
  customTeamId INT
);

CREATE TABLE users (
  userid SERIAL PRIMARY KEY,
  username VARCHAR(255),
  password TEXT               -- * change for hashing
);

