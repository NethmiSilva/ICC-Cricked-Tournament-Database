--Part 3
--QUERIES 


--Q1: Obtain the teams that played in the year 2016 
SELECT TeamOne, TeamTwo, Year,Type FROM MatchDetails WHERE Year= 2016 ;


--Q2: Select Venue Name and Year when team India played
SELECT VenueName, year FROM MatchDetails WHERE TeamOne = 'India' OR TeamTwo = 'India';


--Q3: Order the best players of the match by descending player names and display the country that won the match
SELECT p.playerId, p.playerName,s.Winner FROM Players p NATURAL JOIN Score s
 WHERE p.playerId = s.scoreId  GROUP BY playerId  ORDER BY playerName DESC;


--Q4: Display number of matches Sri Lanka played in Finals 
SELECT COUNT(MId) AS Number_of_matches_SL_Played_in_Finals FROM MatchDetails 
WHERE TeamOne= 'Sri Lanka' OR TeamTwo = 'Sri Lanka' AND Type = 'Final';



--Q5: Select the best players from West Indies
SELECT * FROM Players WHERE TeamCountry = 'West Indies';


--Q6: Select Winner, Scores and Venue Where Team One Scored more than Team Two in the 1st Semi Final
SELECT Distinct S.Winner, S.TeamOneScore, S.TeamTwoScore, v.VenueName
 FROM Score S RIGHT OUTER JOIN MatchDetails v ON S.TeamOneScore > S.TeamTwoScore WHERE v.Type = '1st Semi Final';



--Q7: Select match details and scores for Finals and order by year 
SELECT s.TeamOne, s1.TeamOneScore, s.TeamTwo, s1.TeamTwoScore, s.Year, s.Type FROM MatchDetails s 
LEFT OUTER JOIN Score s1 ON s.MId = s1.scoreId WHERE s.Type LIKE'F%' ORDER BY s.Year;



--Q8: Select man of the match for each winning team and order by ascending order of the names
SELECT v.playerName AS Man_of_the_match, s.Winner FROM Players v INNER JOIN Score s
 ON v.playerId = s.scoreId  ORDER BY v.playerName ASC;


--Q9: Display venues where most of the matches have been played
SELECT A.VenueName FROM MatchDetails A  WHERE A.Year > ALL(SELECT AVG(Year) FROM MatchDetails);

