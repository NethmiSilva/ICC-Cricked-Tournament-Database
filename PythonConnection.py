#Python commands for part 3 queries


import mysql.connector

#Connecting to the database
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Nethmi20030127",
  database="Cricket_20688651"
)


#Creating the cursor
mycursor = mydb.cursor()


#Query One to Obtain teams that played in year 2016
select_one = "SELECT TeamOne, TeamTwo, Year,Type FROM MatchDetails WHERE Year= 2016"

mycursor.execute(select_one)

myresult = mycursor.fetchall()

print()
print("Obtain the teams that played in the year 2016")
print()

for x in myresult:
  print(x)
 
#Query Two to select venue name and year when team India played
sql = "SELECT VenueName, year FROM MatchDetails WHERE TeamOne = 'India' OR TeamTwo = 'India';"
 
mycursor.execute(sql)

myresult_2 = mycursor.fetchall()
 
print()
print("Select Venue Name and Year when team India played")
print()

for x in myresult_2:
  print(x)
  
  
#Query Three  to order the best players of the match by descending player names and display the country that won the match  
sqlt = "SELECT p.playerId, p.playerName,s.Winner FROM Players p NATURAL JOIN Score s WHERE p.playerId = s.scoreId  GROUP BY playerId  ORDER BY playerName DESC;"
 
mycursor.execute(sqlt)

myresult_3 = mycursor.fetchall()
 
 
print()
print("Order the best players of the match by descending player names and display the country that won the match")
print()

for x in myresult_3:
  print(x)
  
  
  
#Query Four to Display number of matches Sri Lanka played in Finals  
sqlth = "SELECT COUNT(MId) AS Number_of_matches_SL_Played_in_Finals FROM MatchDetails WHERE TeamOne= 'Sri Lanka' OR TeamTwo = 'Sri Lanka' AND Type = 'Final';"
 
mycursor.execute(sqlth)

myresult_4 = mycursor.fetchall()
 
 
print()
print("Display number of matches Sri Lanka played in Finals ")
print()

for x in myresult_4:
  print(x)
  
  

#Query Five to Select the best players for the West Indies team  
  
sqlf = "SELECT * FROM Players WHERE TeamCountry = 'West Indies';"
 
mycursor.execute(sqlf)

myresult_5 = mycursor.fetchall()
 
 
print()
print("Select the best players from West Indies")
print()

for x in myresult_5:
  print(x)
  
  
#Query Six to Select the teams, scores,venue year for when teamOne scored more that team two in semi finals
sqlfi = "SELECT Distinct S.Winner, S.TeamOneScore, S.TeamTwoScore, v.VenueName FROM Score S RIGHT OUTER JOIN MatchDetails v ON S.TeamOneScore > S.TeamTwoScore WHERE v.Type = '1st Semi Final';"
 
mycursor.execute(sqlfi)

myresult_6 = mycursor.fetchall()
 
 
print()
print("Select Winner, Scores and Venue Where Team One Scored more than Team Two in the 1st Semi Final")
print()

for x in myresult_6:
  print(x)
  
#Query Seven to Select the teams, scores and year for all the finals, order by the years
sqls = "SELECT s.TeamOne, s1.TeamOneScore, s.TeamTwo, s1.TeamTwoScore, s.Year, s.Type FROM MatchDetails s LEFT OUTER JOIN Score s1 ON s.MId = s1.scoreId WHERE s.Type LIKE'F%' ORDER BY s.Year;"
 
mycursor.execute(sqls)

myresult_7 = mycursor.fetchall()
 
 
print()
print("Select match details and scores for Finals and order by year")
print()

for x in myresult_7:
  print(x)
  
  
  
#Query Eight to select the man of the match for each winning team and order them by ascending order of the names
sqlsv = "SELECT v.playerName AS Man_of_the_match, s.Winner FROM Players v INNER JOIN Score s ON v.playerId = s.scoreId  ORDER BY v.playerName ASC;"
 
mycursor.execute(sqlsv)

myresult_8 = mycursor.fetchall()
 
 
print()
print("Select man of the match for each winning team and order by ascending order of the names")
print()

for x in myresult_8:
  print(x)
  
  
#Query Nine to display the venues where most of the matches have been played 
sqle = "SELECT A.VenueName FROM MatchDetails A  WHERE A.Year > ALL(SELECT AVG(Year) FROM MatchDetails);"
 
mycursor.execute(sqle)

myresult_9 = mycursor.fetchall()
 
 
print()
print("Display venues where most of the matches have been played")
print()

for x in myresult_9:
  print(x)
  
 
#Close cursor 
mycursor.close()
#Close connection to database
mydb.close()

 
