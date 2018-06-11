DROP TABLE IF EXISTS nbaTeams;


CREATE TABLE nbaTeams (
  teamTableId SERIAL PRIMARY KEY,
  nbaTeamId INT,
  teamName VARCHAR(255),
  teamCity VARCHAR(255),
  teamAbbreviation VARCHAR(3)
);
