/* COMMANDS TO CREATE TABLES WITHIN THE DATABASE */


-- Create Team table
DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
        TeamCountry  	VARCHAR(255) NOT NULL,
        PRIMARY KEY(TeamCountry)
);


-- create Players table
DROP TABLE IF EXISTS Players;
CREATE TABLE Players(
            playerId CHAR (8) NOT NULL,
            playerName		VARCHAR(255) NOT NULL,
            TeamCountry  	VARCHAR(255) NOT NULL,
            PRIMARY KEY(playerId),
            FOREIGN KEY(TeamCountry) REFERENCES Team(TeamCountry)
);

-- create Venue table
DROP TABLE IF EXISTS Venue;
CREATE TABLE Venue(
        VenueName  	VARCHAR(255) NOT NULL,
        VenueLocation  	VARCHAR(255) NOT NULL,
        PRIMARY KEY(VenueName)
);



-- create MatchDetails table
DROP TABLE IF EXISTS MatchDetails;
CREATE TABLE MatchDetails(
        MId CHAR(8) NOT NULL,
        VenueName  	VARCHAR(255) NOT NULL,
        TeamOne  	VARCHAR(255) NOT NULL,
        TeamTwo  	VARCHAR(255) NOT NULL,
        Year  	INT NOT NULL,
        Type VARCHAR(255) NOT NULL, 
        PRIMARY KEY(MId),
        FOREIGN KEY(VenueName) REFERENCES Venue(VenueName)
);

-- create Score table
DROP TABLE IF EXISTS Score;
CREATE TABLE Score(
        scoreId CHAR(8) NOT NULL,
        TeamOneScore  	VARCHAR(255) NOT NULL,
        TeamTwoScore  	VARCHAR(255) NOT NULL,
        Winner  	VARCHAR(255) NOT NULL,
        MId CHAR(8) NOT NULL,
        PRIMARY KEY(scoreId),
        FOREIGN KEY(MId) REFERENCES MatchDetails(MId)
);






