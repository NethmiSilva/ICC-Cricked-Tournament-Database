
--Part 4

--Creating views

--Creating a view to display final match details over the years

CREATE VIEW Final AS SELECT s.TeamOne, s1.TeamOneScore, s.TeamTwo, s1.TeamTwoScore, s.Year, s.Type 
FROM MatchDetails s  LEFT OUTER JOIN Score s1 ON s.MId = s1.scoreId WHERE s.Type LIKE'F%' ORDER BY s.Year;


--Command to display the View Final
SELECT * FROM Final;


-- Create a view to display the best players of the Final matches held over the years

CREATE VIEW Best_player_of_the_match AS SELECT s.playerName, m.Year FROM Players s  
LEFT OUTER JOIN MatchDetails m ON s.playerId = m.MId WHERE m.Type = 'Final' ORDER BY m.Year;


--Command to display the View Best_player_of_the_match
SELECT * FROM Best_player_of_the_match;


-- Create a view to display the first semi final matches

CREATE VIEW SemiFinals AS SELECT s.TeamOne, s.TeamTwo, s.Year,s.VenueName 
FROM MatchDetails s  LEFT OUTER JOIN Venue m ON s.VenueName = m.VenueName WHERE s.Type = '1st Semi Final' ORDER BY s.Year;


--Command to display the View SemiFinals
SELECT * FROM SemiFinals;


--Create a view to display the venue details and years when Sri lanka played in the semi finals or finals

CREATE VIEW Sl_Matches AS SELECT p.VenueName,p.VenueLocation, s.Year, s.Type FROM MatchDetails s 
RIGHT OUTER JOIN Venue p ON p.VenueName= s.VenueName WHERE s.TeamOne = 'Sri Lanka' OR s.TeamTwo = 'Sri Lanka';

SELECT * FROM Sl_Matches;


--Creating Indexes 
CREATE INDEX PlayerInd ON Players(playerName);

CREATE INDEX TeamInd ON Team(TeamCountry);






/***********************************/
--Creating Procedures 


--Create procedure to add a new team to table Team

CREATE PROCEDURE newTeam(
e VARCHAR(255)
)
COMMENT 'Insert new Team to table Team'
INSERT INTO Team(TeamCountry)
VALUES(e);

/*To check if Procedure is working*/
CALL newTeam('Bangladesh');
SELECT * FROM Team; 



-- Create procedure to add a new venue to table Venue
CREATE PROCEDURE newVenue(
v VARCHAR(255),
vv VARCHAR(255)
)
COMMENT 'Insert new Venue to table Venue'
INSERT INTO Venue(VenueName, VenueLocation)
VALUES(v, vv);



/*To check if Procedure is working*/
CALL newVenue('TestVenue', 'TestLocation');
SELECT * FROM Venue; 










