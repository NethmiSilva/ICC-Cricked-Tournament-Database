# T20 World Cup Database  

## Introduction
This database project focuses on International Cricket T20 World Cup Tournaments held from 2007 to 2021. The goal is to design and implement a relational database that captures key information about the semi-final and final matches of each series. The dataset used for this project was obtained from Kaggle.

## Designing the Database

### Entities, Relationships, and Attributes
1. Players: PlayerId, PlayerName, TeamCountry
2. Team: TeamCountry
3. Venue: VenueName, VenueLocation
4. MatchDetails: Mid, Year, TeamOne, TeamTwo
5. Score: ScoreId, TeamOneScore, TeamTwoScore, Winner, MId
   
### Relationships
1. Players - Team: Players play for a team.
2. Team - MatchDetails: Teams play in matches.
3. Venue - MatchDetails: Matches are played at venues.
4. MatchDetails - Score: Matches have associated scores.
  
## ER Diagram and Relational Schema
The ER diagram was created to visualize the relationships, and a relational schema was derived to represent the tables in the database. The design aimed for clarity and adherence to the third normal form.

## Data Descriptions
Tables were created with appropriate data types, and data descriptions were provided for each attribute. Sample data was added using a CSV file obtained from Kaggle.

## Assumptions
No assumptions were made during the database creation, relying solely on factual information available in the dataset.

## Implementation

### Database Creation:
MySQL commands were used to create the database, tables, and relationships.

#### Adding Sample Data:
Sample data was added to tables using SQL commands and the SOURCE command in MySQL.
#### Query Design and Implementation:
Nine queries were designed and implemented to demonstrate basic SQL statements, including string comparison, joins, sub-queries, GROUP BY, and ORDER BY.


### Advanced Features:
Utilized views, procedures, and indexes.
1. Views: Displayed final match details, best players of final matches, venue details when Sri Lanka played in semifinals or finals, and details of the first semifinal matches.
2. Procedures: Added new teams and venues to respective tables.
3. Indexes: Created indexes for playerName in Players and TeamCountry in Team.
   
### Database Connectivity with Python:
Python3 was used to connect to the database, execute queries, and display the results.

## User Guide

### Database Creation:
Execute SQL commands in TableCommands.sql and ValueCommands.sql files to create the database and add sample data.

### Running Queries:
Execute queries in Queries.sql to retrieve specific information from the database.

### Advanced Features:
Use advanced features by running commands in AdvancedFeatures.sql.

### Python Connectivity:
Run the Python script PythonConnection.py to connect to the database and execute predefined queries.
