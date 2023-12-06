--ADDING VALUES TO THE TABLES CREATED; 



--ADDING VALUES TO TABLE TEAM
/******************************************************/
INSERT INTO Team VALUES
('New Zealand');
INSERT INTO Team VALUES
('Pakistan');
INSERT INTO Team VALUES
('Australia');
INSERT INTO Team VALUES
('India');


INSERT INTO Team VALUES
('South Africa');
INSERT INTO Team VALUES
('West Indies');
INSERT INTO Team VALUES
('Sri Lanka');


INSERT INTO Team VALUES
('England');


--ADDING VALUES TO TABLE PLAYERS
/**************************************************/
INSERT INTO Players VALUES
('A001','Umar Gul', 'Pakistan');
INSERT INTO Players VALUES
('A002','Yuvraj Singh', 'India');
INSERT INTO Players VALUES
('A003','Irfan Pathan', 'India');


INSERT INTO Players VALUES
('A004','Shahid Afridi', 'Pakistan');
INSERT INTO Players VALUES
('A005','Tilakaratne Dilshan', 'Sri Lanka');
INSERT INTO Players VALUES
('A006','Shahid Afridi', 'Pakistan');


INSERT INTO Players VALUES
('A007','Stuart Broad', 'England');
INSERT INTO Players VALUES
('A008','Michael Hussey', 'Australia');
INSERT INTO Players VALUES
('A009','Craig Kieswetter', 'England');



INSERT INTO Players VALUES
('A010','Mahela Jayawardene', 'Sri Lanka');
INSERT INTO Players VALUES
('A011','Chris Gayle', 'West Indies');
INSERT INTO Players VALUES
('A012','Marlon Samuels', 'West Indies');


INSERT INTO Players VALUES
('A013','Angelo Mathews', 'Sri Lanka');
INSERT INTO Players VALUES
('A014','Virat Kohli', 'India');
INSERT INTO Players VALUES
('A015','Kumar Sangakkara', 'Sri Lanka');




INSERT INTO Players VALUES
('A016','Jason Roy', 'England');
INSERT INTO Players VALUES
('A017','Lendl Simmons', 'West Indies');
INSERT INTO Players VALUES
('A018','Marlon Samuels', 'West Indies');




INSERT INTO Players VALUES
('A019','Daryl Mitchell', 'New Zealand');
INSERT INTO Players VALUES
('A020','Mathew Wade', 'Australia');
INSERT INTO Players VALUES
('A021','Mitchell Marsh', 'Australia');




--ADDING VALUES TO TABLE VENUE
/******************************************/
INSERT INTO Venue VALUES
('Newlands' , 'Cape Town');
INSERT INTO Venue VALUES
('Kingsmead', 'Durban');
INSERT INTO Venue VALUES
('The Wanderers Stadium', 'Johannesburg');


INSERT INTO Venue VALUES
('Trent Bridge' , 'Nottingham');
INSERT INTO Venue VALUES
('Kennington Oval', 'London');
INSERT INTO Venue VALUES
('Lords', 'London');


INSERT INTO Venue VALUES
('Daren Sammy National Cricket Stadium', 'St Lucia');
INSERT INTO Venue VALUES
('Kensington Oval', 'Barbados');



INSERT INTO Venue VALUES
('R.Premadasa Stadium', 'Colombo');


INSERT INTO Venue VALUES
('Shere Bangla National Stadium', 'Dhaka');



INSERT INTO Venue VALUES
('Arun Jaitley Stadium' , 'Delhi');
INSERT INTO Venue VALUES
('Wankhede Stadium', 'Mumbai');
INSERT INTO Venue VALUES
('Eden Gardens', 'Kolkata');


INSERT INTO Venue VALUES
('Sheikh Zayed Stadium', 'Abu Dhabi');
INSERT INTO Venue VALUES
('Dubai International Cricket Stadium', 'Dubai');




--ADDING VALUES TO TABLE MATCHDETAILS
/***************************************************/
INSERT INTO MatchDetails VALUES
('A001' , 'Newlands', 'New Zealand', 'Pakistan','2007', '1st Semi Final');
INSERT INTO MatchDetails VALUES
('A002' , 'Kingsmead', 'Australia', 'India', '2007', '2nd Semi Final');
INSERT INTO MatchDetails VALUES
('A003' , 'The Wanderers Stadium', 'India', 'Pakistan', '2007', 'Final');


INSERT INTO MatchDetails VALUES
('A004' , 'Trent Bridge', 'Pakistan', 'South Africa','2009', '1st Semi Final');
INSERT INTO MatchDetails VALUES
('A005' , 'Kennington Oval', 'Sri Lanka', 'West Indies', '2009', '2nd Semi Final');
INSERT INTO MatchDetails VALUES
('A006' , 'Lords', 'Pakistan', 'Sri Lanka', '2009', 'Final');



INSERT INTO MatchDetails VALUES
('A007' , 'Daren Sammy National Cricket Stadium', 'England', 'Sri Lanka','2010', '1st Semi Final');
INSERT INTO MatchDetails VALUES
('A008' , 'Daren Sammy National Cricket Stadium', 'Australia', 'Pakistan', '2010', '2nd Semi Final');
INSERT INTO MatchDetails VALUES
('A009' , 'Kensington Oval', 'Australia', 'England', '2010', 'Final');




INSERT INTO MatchDetails VALUES
('A010' , 'R.Premadasa Stadium', 'Sri Lanka', 'Pakistan','2012', '1st Semi Final');
INSERT INTO MatchDetails VALUES
('A011' , 'R.Premadasa Stadium', 'Australia', 'West Indies', '2012', '2nd Semi Final');
INSERT INTO MatchDetails VALUES
('A012' , 'R.Premadasa Stadium', 'Sri Lanka', 'West Indies', '2012', 'Final');


INSERT INTO MatchDetails VALUES
('A013' , 'Shere Bangla National Stadium', 'Sri Lanka', 'West Indies','2014', '1st Semi Final');
INSERT INTO MatchDetails VALUES
('A014' , 'Shere Bangla National Stadium', 'India', 'South Africa', '2014', '2nd Semi Final');
INSERT INTO MatchDetails VALUES
('A015' , 'Shere Bangla National Stadium', 'India', 'Sri Lanka', '2014', 'Final');



INSERT INTO MatchDetails VALUES
('A016' , 'Arun Jaitley Stadium', 'England', 'New Zealand','2016', '1st Semi Final');
INSERT INTO MatchDetails VALUES
('A017' , 'Wankhede Stadium', 'West Indies', 'India', '2016', '2nd Semi Final');
INSERT INTO MatchDetails VALUES
('A018' , 'Eden Gardens', 'England', 'West Indies', '2016', 'Final');




INSERT INTO MatchDetails VALUES
('A019' , 'Sheikh Zayed Stadium', 'England', 'New Zealand','2021', '1st Semi Final');
INSERT INTO MatchDetails VALUES
('A020' , 'Dubai International Cricket Stadium', 'Pakistan', 'Australia', '2021', '2nd Semi Final');
INSERT INTO MatchDetails VALUES
('A021' , 'Dubai International Cricket Stadium', 'New Zealand', 'Australia', '2021', 'Final');



--ADDING VALUES TO TABLE SCORE
/*****************************************/
INSERT INTO Score VALUES
('A001' , '147/4', '143/8', 'Pakistan', 'A001');
INSERT INTO Score VALUES
('A002' , '188/5', '173/7', 'India', 'A002');
INSERT INTO Score VALUES
('A003' , '157/5', '152', 'India', 'A003');

INSERT INTO Score VALUES
('A004' , '149/4', '142/5', 'Pakistan', 'A004');
INSERT INTO Score VALUES
('A005' , '158/5', '101', 'Sri Lanka', 'A005');
INSERT INTO Score VALUES
('A006' , '138/6', '139/2', 'Pakistan', 'A006');


INSERT INTO Score VALUES
('A007' , '132/3', '128/6', 'England', 'A007');
INSERT INTO Score VALUES
('A008' , '197/7', '191/6', 'Australia', 'A008');
INSERT INTO Score VALUES
('A009' , '148/3', '147/6', 'England', 'A009');



INSERT INTO Score VALUES
('A010' , '139/4', '123/7', 'Sri Lanka', 'A010');
INSERT INTO Score VALUES
('A011' , '205/4', '131', 'West Indies', 'A011');
INSERT INTO Score VALUES
('A012' , '137/6', '101', 'West Indies', 'A012');




INSERT INTO Score VALUES
('A013' , '160/6', '80/4', 'Sri Lanka', 'A013');
INSERT INTO Score VALUES
('A014' , '176/4', '172/4', 'India', 'A014');
INSERT INTO Score VALUES
('A015' , '134/4', '130/4', 'Sri Lanka', 'A015');



INSERT INTO Score VALUES
('A016' , '159/3', '153/8', 'England', 'A016');
INSERT INTO Score VALUES
('A017' , '196/3', '192/2', 'West Indies', 'A017');
INSERT INTO Score VALUES
('A018' , '161/6', '155/9', 'West Indies', 'A018');


INSERT INTO Score VALUES
('A019' , '167/5', '166/4', 'New Zealand', 'A019');
INSERT INTO Score VALUES
('A020' , '177/5', '176/4', 'Australia', 'A020');
INSERT INTO Score VALUES
('A021' , '173/2', '172/4', 'Australia', 'A021');




