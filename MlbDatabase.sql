DROP TABLE Player CASCADE CONSTRAINTS;
DROP TABLE Stats CASCADE CONSTRAINTS;
DROP TABLE Game CASCADE CONSTRAINTS;
DROP TABLE Injury CASCADE CONSTRAINTS;
DROP TABLE Team CASCADE CONSTRAINTS;
DROP TABLE Coach CASCADE CONSTRAINTS;
DROP TABLE Color CASCADE CONSTRAINTS;
DROP TABLE Part_Of CASCADE CONSTRAINTS;
DROP TABLE Final_Score CASCADE CONSTRAINTS;

CREATE TABLE Player
(
Name VARCHAR2 (30) ,
PlayerNumber NUMBER(3),
Bdate VARCHAR(30),
Position VARCHAR2(20),
College VARCHAR2(35),
TeamName VARCHAR2(40),
PlayerID VARCHAR2 (15) CONSTRAINT Player_PlayerID_PK PRIMARY KEY
);

CREATE TABLE Stats
(
PlayerID VARCHAR2 (15),
League VARCHAR2(15),
RBI NUMBER(3),
Runs NUMBER(4),
BattingEverage NUMBER(4),
Number_of_Games NUMBER(5),
Hits NUMBER(4),
Homeruns NUMBER(4),
CONSTRAINT Stats_PK PRIMARY KEY(PlayerID,League)
);

CREATE TABLE Game
(
Game_Date Date CONSTRAINT Game_Game_Date_PK PRIMARY KEY,
Location VARCHAR2(25) ,
GameNumber Number(3)
);


CREATE TABLE Team
(
TeamName VARCHAR2 (40) CONSTRAINT Team_Team_name_PK PRIMARY KEY,
TeamID VARCHAR2 (15),
venueName VARCHAR2(40)
);

CREATE TABLE Injury
(
injuryDesc VARCHAR2 (100) CONSTRAINT Injury_injuryDesc_PK PRIMARY KEY,
PlayerID VARCHAR2 (15),
TeamName VARCHAR2 (40)
);

CREATE TABLE Coach
(
Name VARCHAR2 (30) CONSTRAINT Coach_Name_PK PRIMARY KEY,
TeamName VARCHAR2(40)
);

CREATE TABLE Color
(
TeamName VARCHAR2 (20),
Color VARCHAR2 (10),
CONSTRAINT Color_PK PRIMARY KEY(TeamName,Color)
);

CREATE TABLE Part_Of
(
PlayerID VARCHAR2 (15),
Game_Date Date,
CONSTRAINT Part_of_PK PRIMARY KEY(PlayerID,Game_Date)
);

CREATE TABLE Final_Score
(
Game_Date Date,
Score Number(2),
CONSTRAINT Final_Score_PK PRIMARY KEY(Game_Date,Score)
);

INSERT INTO Player VALUES ('Tanner Anderson', '', '1993-05-27T00:00:00', 'P', 'Harvard', 'Oakland Athletics', '664196');

INSERT INTO Player VALUES ('Luis Barrera', '', '1995-11-15T00:00:00', 'CF', '', 'Oakland Athletics', '642456');

INSERT INTO Player VALUES ('Franklin Barreto', '1', '1996-02-27T00:00:00', '2B', '', 'Oakland Athletics', '620439');

INSERT INTO Player VALUES ('Chris Bassitt', '40', '1989-02-22T00:00:00', 'P', 'Akron', 'Oakland Athletics', '605135');

INSERT INTO Player VALUES ('Paul Blackburn', '58', '1993-12-04T00:00:00', 'P', '', 'Oakland Athletics', '621112');

INSERT INTO Player VALUES ('Skye Bolt', '', '1994-01-15T00:00:00', 'CF', 'North Carolina', 'Oakland Athletics', '621450');

INSERT INTO Player VALUES ('Aaron Brooks', '35', '1990-04-27T00:00:00', 'P', 'Cal State San Bernardino', 'Oakland Athletics', '605156');

INSERT INTO Player VALUES ('Ryan Buchter', '52', '1987-02-13T00:00:00', 'P', 'Rowan, NJ', 'Oakland Athletics', '488748');

INSERT INTO Player VALUES ('Mark Canha', '20', '1989-02-15T00:00:00', 'CF', 'California', 'Oakland Athletics', '592192');

INSERT INTO Player VALUES ('Matt Chapman', '26', '1993-04-28T00:00:00', '3B', 'Cal State Fullerton', 'Oakland Athletics', '656305');

INSERT INTO Player VALUES ('Jharel Cotton', '45', '1992-01-19T00:00:00', 'P', 'East Carolina', 'Oakland Athletics', '605194');

INSERT INTO Player VALUES ('Khris Davis', '2', '1987-12-21T00:00:00', 'LF', 'Cal State Fullerton', 'Oakland Athletics', '501981');

INSERT INTO Player VALUES ('Ryan Dull', '66', '1989-10-02T00:00:00', 'P', 'UNC Asheville', 'Oakland Athletics', '623430');

INSERT INTO Player VALUES ('Mike Fiers', '50', '1985-06-15T00:00:00', 'P', 'Nova Southeastern, FL', 'Oakland Athletics', '571666');

INSERT INTO Player VALUES ('Dustin Fowler', '11', '1994-12-29T00:00:00', 'CF', '', 'Oakland Athletics', '641583');

INSERT INTO Player VALUES ('Cory Gearrin', '61', '1986-04-14T00:00:00', 'P', 'Mercer University', 'Oakland Athletics', '518715');

INSERT INTO Player VALUES ('Daniel Gossett', '48', '1992-11-13T00:00:00', 'P', 'Clemson', 'Oakland Athletics', '605254');

INSERT INTO Player VALUES ('Kendall Graveman', '49', '1990-12-21T00:00:00', 'P', 'Mississippi State', 'Oakland Athletics', '608665');

INSERT INTO Player VALUES ('Liam Hendriks', '16', '1989-02-10T00:00:00', 'P', '', 'Oakland Athletics', '521230');

INSERT INTO Player VALUES ('Grant Holmes', '', '1996-03-22T00:00:00', 'P', '', 'Oakland Athletics', '656550');

INSERT INTO Player VALUES ('James Kaprielian', '', '1994-03-02T00:00:00', 'P', 'UCLA', 'Oakland Athletics', '621076');

INSERT INTO Player VALUES ('Ramon Laureano', '22', '1994-07-15T00:00:00', 'RF', 'Northeastern Oklahoma A&M', 'Oakland Athletics', '657656');

INSERT INTO Player VALUES ('Sean Manaea', '55', '1992-02-01T00:00:00', 'P', 'Indiana State', 'Oakland Athletics', '640455');

INSERT INTO Player VALUES ('Nick Martini', '38', '1990-06-27T00:00:00', 'LF', 'Kansas State', 'Oakland Athletics', '605361');

INSERT INTO Player VALUES ('Jorge Mateo', '', '1995-06-23T00:00:00', 'SS', '', 'Oakland Athletics', '622761');

INSERT INTO Player VALUES ('Daniel Mengden', '33', '1993-02-19T00:00:00', 'P', 'Texas A&M', 'Oakland Athletics', '596043');

INSERT INTO Player VALUES ('Frankie Montas', '47', '1993-03-21T00:00:00', 'P', '', 'Oakland Athletics', '593423');

INSERT INTO Player VALUES ('Matt Olson', '28', '1994-03-29T00:00:00', '1B', '', 'Oakland Athletics', '621566');

INSERT INTO Player VALUES ('Emilio Pagan', '15', '1991-05-07T00:00:00', 'P', 'Belmont Abbey', 'Oakland Athletics', '641941');

INSERT INTO Player VALUES ('Yusmeiro Petit', '36', '1984-11-22T00:00:00', 'P', '', 'Oakland Athletics', '433589');

INSERT INTO Player VALUES ('Josh Phegley', '19', '1988-02-12T00:00:00', 'C', 'Indiana', 'Oakland Athletics', '572033');

INSERT INTO Player VALUES ('Chad Pinder', '18', '1992-03-29T00:00:00', 'LF', 'Virginia Tech', 'Oakland Athletics', '640461');

INSERT INTO Player VALUES ('Stephen Piscotty', '25', '1991-01-14T00:00:00', 'RF', 'Stanford', 'Oakland Athletics', '572039');

INSERT INTO Player VALUES ('Fernando Rodney', '56', '1977-03-18T00:00:00', 'P', '', 'Oakland Athletics', '407845');

INSERT INTO Player VALUES ('Marcus Semien', '10', '1990-09-17T00:00:00', 'SS', 'California', 'Oakland Athletics', '543760');

INSERT INTO Player VALUES ('Blake Treinen', '39', '1988-06-30T00:00:00', 'P', 'South Dakota State', 'Oakland Athletics', '595014');

INSERT INTO Player VALUES ('Andrew Triggs', '60', '1989-03-16T00:00:00', 'P', 'Southern California', 'Oakland Athletics', '592811');

INSERT INTO Player VALUES ('Lou Trivino', '62', '1991-10-01T00:00:00', 'P', 'Slippery Rock', 'Oakland Athletics', '642152');

INSERT INTO Player VALUES ('J.B. Wendelken', '57', '1993-03-24T00:00:00', 'P', 'Middle Georgia State', 'Oakland Athletics', '605525');
INSERT INTO Player VALUES ('Miguel Almonte', '49', '1993-04-04T00:00:00', 'P', '', 'Los Angeles Angels', '602083');

INSERT INTO Player VALUES ('Jose Alvarez', '48', '1989-05-06T00:00:00', 'P', '', 'Los Angeles Angels', '501625');

INSERT INTO Player VALUES ('Justin Anderson', '38', '1992-09-28T00:00:00', 'P', 'Texas - San Antonio', 'Los Angeles Angels', '605121');

INSERT INTO Player VALUES ('Jaime Barria', '51', '1996-07-18T00:00:00', 'P', '', 'Los Angeles Angels', '642545');

INSERT INTO Player VALUES ('Cam Bedrosian', '32', '1991-10-02T00:00:00', 'P', '', 'Los Angeles Angels', '592135');

INSERT INTO Player VALUES ('Jabari Blash', '54', '1989-07-04T00:00:00', 'RF', 'Miami Dade CC, FL', 'Los Angeles Angels', '518466');

INSERT INTO Player VALUES ('Austin Brice', '', '1992-06-19T00:00:00', 'P', '', 'Los Angeles Angels', '592169');

INSERT INTO Player VALUES ('Jose Briceno', '10', '1992-09-19T00:00:00', 'C', '', 'Los Angeles Angels', '593993');

INSERT INTO Player VALUES ('Ty Buttrey', '31', '1993-03-31T00:00:00', 'P', '', 'Los Angeles Angels', '621142');

INSERT INTO Player VALUES ('Kole Calhoun', '56', '1987-10-14T00:00:00', 'RF', 'Arizona State', 'Los Angeles Angels', '594777');

INSERT INTO Player VALUES ('Jesus Castillo', '', '1995-08-27T00:00:00', 'P', '', 'Los Angeles Angels', '612792');

INSERT INTO Player VALUES ('Taylor Cole', '67', '1989-08-20T00:00:00', 'P', 'Brigham Young', 'Los Angeles Angels', '518566');

INSERT INTO Player VALUES ('Kaleb Cowart', '22', '1992-06-02T00:00:00', 'SS', '', 'Los Angeles Angels', '592230');

INSERT INTO Player VALUES ('Zack Cozart', '7', '1985-08-12T00:00:00', '3B', 'Mississippi', 'Los Angeles Angels', '446359');

INSERT INTO Player VALUES ('Luke Farrell', '', '1991-06-07T00:00:00', 'P', 'Northwestern', 'Los Angeles Angels', '608652');

INSERT INTO Player VALUES ('David Fletcher', '6', '1994-05-31T00:00:00', '3B', 'Loyola Marymount', 'Los Angeles Angels', '664058');

INSERT INTO Player VALUES ('Andrew Heaney', '28', '1991-06-05T00:00:00', 'P', 'Oklahoma State', 'Los Angeles Angels', '571760');

INSERT INTO Player VALUES ('Michael Hermosillo', '59', '1995-01-17T00:00:00', 'CF', '', 'Los Angeles Angels', '641684');

INSERT INTO Player VALUES ('Williams Jerez', '36', '1992-05-16T00:00:00', 'P', '', 'Los Angeles Angels', '605301');

INSERT INTO Player VALUES ('Jake Jewell', '65', '1993-05-16T00:00:00', 'P', 'Northeastern Oklahoma A&M', 'Los Angeles Angels', '657228');

INSERT INTO Player VALUES ('Luis Madero', '', '1997-04-15T00:00:00', 'P', '', 'Los Angeles Angels', '650347');

INSERT INTO Player VALUES ('Keynan Middleton', '99', '1993-09-12T00:00:00', 'P', 'Lane CC', 'Los Angeles Angels', '641871');

INSERT INTO Player VALUES ('Shohei Ohtani', '17', '1994-07-05T00:00:00', 'P', '', 'Los Angeles Angels', '660271');

INSERT INTO Player VALUES ('Blake Parker', '53', '1985-06-19T00:00:00', 'P', 'Arkansas', 'Los Angeles Angels', '453284');

INSERT INTO Player VALUES ('Felix Pena', '64', '1990-02-25T00:00:00', 'P', '', 'Los Angeles Angels', '570240');

INSERT INTO Player VALUES ('Dillon Peters', '', '1992-08-31T00:00:00', 'P', 'Texas', 'Los Angeles Angels', '596071');

INSERT INTO Player VALUES ('Albert Pujols', '5', '1980-01-16T00:00:00', '1B', 'MCC-Maple Woods', 'Los Angeles Angels', '405395');

INSERT INTO Player VALUES ('JC Ramirez', '66', '1988-08-16T00:00:00', 'P', '', 'Los Angeles Angels', '500724');

INSERT INTO Player VALUES ('Noe Ramirez', '24', '1989-12-22T00:00:00', 'P', 'Cal State Fullerton', 'Los Angeles Angels', '598287');

INSERT INTO Player VALUES ('Luis Rengifo', '', '1997-02-26T00:00:00', '2B', '', 'Los Angeles Angels', '650859');

INSERT INTO Player VALUES ('Hansel Robles', '57', '1990-08-13T00:00:00', 'P', '', 'Los Angeles Angels', '570663');

INSERT INTO Player VALUES ('Matt Shoemaker', '52', '1986-09-27T00:00:00', 'P', 'Eastern Michigan', 'Los Angeles Angels', '533167');

INSERT INTO Player VALUES ('Andrelton Simmons', '2', '1989-09-04T00:00:00', 'SS', 'Western Oklahoma State College', 'Los Angeles Angels', '592743');

INSERT INTO Player VALUES ('Tyler Skaggs', '45', '1991-07-13T00:00:00', 'P', '', 'Los Angeles Angels', '572140');

INSERT INTO Player VALUES ('Kevan Smith', '', '1988-06-28T00:00:00', 'C', 'Pittsburgh', 'Los Angeles Angels', '607345');

INSERT INTO Player VALUES ('Jose Suarez', '', '1998-01-03T00:00:00', 'P', '', 'Los Angeles Angels', '660761');

INSERT INTO Player VALUES ('Nick Tropeano', '35', '1990-08-27T00:00:00', 'P', 'SUNY Stony Brook', 'Los Angeles Angels', '607374');

INSERT INTO Player VALUES ('Mike Trout', '27', '1991-08-07T00:00:00', 'CF', '', 'Los Angeles Angels', '545361');

INSERT INTO Player VALUES ('Justin Upton', '8', '1987-08-25T00:00:00', 'LF', '', 'Los Angeles Angels', '457708');

INSERT INTO Player VALUES ('Taylor Ward', '3', '1993-12-14T00:00:00', '3B', 'Fresno State', 'Los Angeles Angels', '621493');

INSERT INTO Player VALUES ('Scott Alexander', '75', '1989-07-10T00:00:00', 'P', 'Sonoma State, CA', 'Los Angeles Dodgers', '518397');

INSERT INTO Player VALUES ('Yadier Alvarez', '', '1996-03-07T00:00:00', 'P', '', 'Los Angeles Dodgers', '665751');

INSERT INTO Player VALUES ('Pedro Baez', '52', '1988-03-11T00:00:00', 'P', '', 'Los Angeles Dodgers', '520980');

INSERT INTO Player VALUES ('Austin Barnes', '15', '1989-12-28T00:00:00', 'C', 'Arizona State', 'Los Angeles Dodgers', '605131');

INSERT INTO Player VALUES ('Matt Beaty', '', '1993-04-28T00:00:00', '1B', 'Belmont', 'Los Angeles Dodgers', '607461');

INSERT INTO Player VALUES ('Cody Bellinger', '35', '1995-07-13T00:00:00', '1B', '', 'Los Angeles Dodgers', '641355');

INSERT INTO Player VALUES ('Walker Buehler', '21', '1994-07-28T00:00:00', 'P', 'Vanderbilt', 'Los Angeles Dodgers', '621111');

INSERT INTO Player VALUES ('JT Chargois', '47', '1990-12-03T00:00:00', 'P', 'Rice', 'Los Angeles Dodgers', '608638');

INSERT INTO Player VALUES ('Tony Cingrani', '54', '1989-07-05T00:00:00', 'P', 'Rice', 'Los Angeles Dodgers', '571561');

INSERT INTO Player VALUES ('Kyle Farmer', '17', '1990-08-17T00:00:00', 'C', 'Georgia', 'Los Angeles Dodgers', '571657');

INSERT INTO Player VALUES ('Caleb Ferguson', '64', '1996-07-02T00:00:00', 'P', '', 'Los Angeles Dodgers', '657571');

INSERT INTO Player VALUES ('Josh Fields', '46', '1985-08-19T00:00:00', 'P', 'Georgia', 'Los Angeles Dodgers', '451661');

INSERT INTO Player VALUES ('Dylan Floro', '51', '1990-12-27T00:00:00', 'P', 'Cal State Fullerton', 'Los Angeles Dodgers', '571670');

INSERT INTO Player VALUES ('David Freese', '25', '1983-04-28T00:00:00', '3B', 'South Alabama', 'Los Angeles Dodgers', '501896');

INSERT INTO Player VALUES ('Rocky Gale', '58', '1988-02-22T00:00:00', 'C', 'Portland', 'Los Angeles Dodgers', '502570');

INSERT INTO Player VALUES ('Yimi Garcia', '63', '1990-08-18T00:00:00', 'P', '', 'Los Angeles Dodgers', '554340');

INSERT INTO Player VALUES ('Enrique Hernandez', '14', '1991-08-24T00:00:00', 'CF', '', 'Los Angeles Dodgers', '571771');

INSERT INTO Player VALUES ('Rich Hill', '44', '1980-03-11T00:00:00', 'P', 'Michigan', 'Los Angeles Dodgers', '448179');

INSERT INTO Player VALUES ('Kenley Jansen', '74', '1987-09-30T00:00:00', 'P', '', 'Los Angeles Dodgers', '445276');

INSERT INTO Player VALUES ('Matt Kemp', '27', '1984-09-23T00:00:00', 'LF', '', 'Los Angeles Dodgers', '461314');

INSERT INTO Player VALUES ('Clayton Kershaw', '22', '1988-03-19T00:00:00', 'P', '', 'Los Angeles Dodgers', '477132');

INSERT INTO Player VALUES ('Kenta Maeda', '18', '1988-04-11T00:00:00', 'P', '', 'Los Angeles Dodgers', '628317');

INSERT INTO Player VALUES ('Adam McCreery', '', '1992-12-31T00:00:00', 'P', 'Azusa Pacific', 'Los Angeles Dodgers', '607030');

INSERT INTO Player VALUES ('Max Muncy', '13', '1990-08-25T00:00:00', '1B', 'Baylor', 'Los Angeles Dodgers', '571970');

INSERT INTO Player VALUES ('Joc Pederson', '31', '1992-04-21T00:00:00', 'LF', '', 'Los Angeles Dodgers', '592626');

INSERT INTO Player VALUES ('Yasiel Puig', '66', '1990-12-07T00:00:00', 'RF', '', 'Los Angeles Dodgers', '624577');

INSERT INTO Player VALUES ('Edwin Rios', '', '1994-04-21T00:00:00', '3B', 'Florida International', 'Los Angeles Dodgers', '621458');

INSERT INTO Player VALUES ('Keibert Ruiz', '', '1998-07-20T00:00:00', 'C', '', 'Los Angeles Dodgers', '660688');

INSERT INTO Player VALUES ('Hyun-Jin Ryu', '99', '1987-03-25T00:00:00', 'P', '', 'Los Angeles Dodgers', '547943');

INSERT INTO Player VALUES ('Dennis Santana', '77', '1996-04-12T00:00:00', 'P', '', 'Los Angeles Dodgers', '642701');

INSERT INTO Player VALUES ('Josh Sborz', '', '1993-12-17T00:00:00', 'P', 'Virginia', 'Los Angeles Dodgers', '622250');

INSERT INTO Player VALUES ('Corey Seager', '5', '1994-04-27T00:00:00', 'SS', '', 'Los Angeles Dodgers', '608369');

INSERT INTO Player VALUES ('Brock Stewart', '48', '1991-10-03T00:00:00', 'P', 'Illinois State', 'Los Angeles Dodgers', '592779');

INSERT INTO Player VALUES ('Ross Stripling', '68', '1989-11-23T00:00:00', 'P', 'Texas A&M', 'Los Angeles Dodgers', '548389');

INSERT INTO Player VALUES ('Chris Taylor', '3', '1990-08-29T00:00:00', 'SS', 'Virginia', 'Los Angeles Dodgers', '621035');

INSERT INTO Player VALUES ('Andrew Toles', '60', '1992-05-24T00:00:00', 'LF', 'Tennessee', 'Los Angeles Dodgers', '592808');

INSERT INTO Player VALUES ('Justin Turner', '10', '1984-11-23T00:00:00', '3B', 'Cal State Fullerton', 'Los Angeles Dodgers', '457759');

INSERT INTO Player VALUES ('Julio Urias', '7', '1996-08-12T00:00:00', 'P', '', 'Los Angeles Dodgers', '628711');

INSERT INTO Player VALUES ('Alex Verdugo', '61', '1996-05-15T00:00:00', 'CF', '', 'Los Angeles Dodgers', '657077');

INSERT INTO Player VALUES ('Alex Wood', '57', '1991-01-12T00:00:00', 'P', 'Georgia', 'Los Angeles Dodgers', '622072');

INSERT INTO Player VALUES ('Austin L. Adams', '', '1991-05-05T00:00:00', 'P', 'South Florida', 'Washington Nationals', '613534');

INSERT INTO Player VALUES ('Kyle Barraclough', '', '1990-05-23T00:00:00', 'P', 'Saint Mary's (CA)', 'Washington Nationals', '607457');

INSERT INTO Player VALUES ('James Bourque', '', '1993-07-09T00:00:00', 'P', 'Michigan', 'Washington Nationals', '630263');

INSERT INTO Player VALUES ('Jimmy Cordero', '52', '1991-10-19T00:00:00', 'P', '', 'Washington Nationals', '622772');

INSERT INTO Player VALUES ('Wilmer Difo', '1', '1992-04-02T00:00:00', '2B', '', 'Washington Nationals', '594694');

INSERT INTO Player VALUES ('Sean Doolittle', '62', '1986-09-26T00:00:00', 'P', 'Virginia', 'Washington Nationals', '448281');

INSERT INTO Player VALUES ('Adam Eaton', '2', '1988-12-06T00:00:00', 'RF', 'Miami (OH)', 'Washington Nationals', '594809');

INSERT INTO Player VALUES ('Erick Fedde', '23', '1993-02-25T00:00:00', 'P', 'Nevada - Las Vegas', 'Washington Nationals', '607200');

INSERT INTO Player VALUES ('Koda Glover', '30', '1993-04-13T00:00:00', 'P', 'Oklahoma State', 'Washington Nationals', '606983');

INSERT INTO Player VALUES ('Trevor Gott', '26', '1992-08-26T00:00:00', 'P', 'Kentucky', 'Washington Nationals', '641627');

INSERT INTO Player VALUES ('Matt Grace', '33', '1988-12-14T00:00:00', 'P', 'UCLA', 'Washington Nationals', '594840');

INSERT INTO Player VALUES ('Howie Kendrick', '12', '1983-07-12T00:00:00', '2B', 'St. Johns River State College', 'Washington Nationals', '435062');

INSERT INTO Player VALUES ('Spencer Kieboom', '64', '1991-03-16T00:00:00', 'C', 'Clemson', 'Washington Nationals', '571851');

INSERT INTO Player VALUES ('Kyle McGowin', '61', '1991-11-27T00:00:00', 'P', 'Savannah State', 'Washington Nationals', '641851');

INSERT INTO Player VALUES ('Justin Miller', '60', '1987-06-13T00:00:00', 'P', 'Fresno State', 'Washington Nationals', '502522');

INSERT INTO Player VALUES ('Raudy Read', '', '1993-10-29T00:00:00', 'C', '', 'Washington Nationals', '600466');

INSERT INTO Player VALUES ('Anthony Rendon', '6', '1990-06-06T00:00:00', '3B', 'Rice', 'Washington Nationals', '543685');

INSERT INTO Player VALUES ('Matt Reynolds', '19', '1990-12-03T00:00:00', 'SS', 'Arkansas', 'Washington Nationals', '608703');

INSERT INTO Player VALUES ('Tanner Roark', '57', '1986-10-05T00:00:00', 'P', 'Illinois', 'Washington Nationals', '543699');

INSERT INTO Player VALUES ('Victor Robles', '16', '1997-05-19T00:00:00', 'CF', '', 'Washington Nationals', '645302');

INSERT INTO Player VALUES ('Jefry Rodriguez', '68', '1993-07-26T00:00:00', 'P', '', 'Washington Nationals', '622446');

INSERT INTO Player VALUES ('Trevor Rosenthal', '', '1990-05-29T00:00:00', 'P', 'Cowley CC, KS', 'Washington Nationals', '572096');

INSERT INTO Player VALUES ('Joe Ross', '41', '1993-05-21T00:00:00', 'P', '', 'Washington Nationals', '605452');

INSERT INTO Player VALUES ('Adrian Sanchez', '5', '1990-08-16T00:00:00', 'SS', '', 'Washington Nationals', '506703');

INSERT INTO Player VALUES ('Max Scherzer', '31', '1984-07-27T00:00:00', 'P', 'Missouri', 'Washington Nationals', '453286');

INSERT INTO Player VALUES ('Pedro Severino', '29', '1993-07-20T00:00:00', 'C', '', 'Washington Nationals', '600474');

INSERT INTO Player VALUES ('Sammy Solis', '36', '1988-08-10T00:00:00', 'P', 'San Diego', 'Washington Nationals', '519301');

INSERT INTO Player VALUES ('Juan Soto', '22', '1998-10-25T00:00:00', 'LF', '', 'Washington Nationals', '665742');

INSERT INTO Player VALUES ('Andrew Stevenson', '45', '1994-06-01T00:00:00', 'LF', 'Louisiana State', 'Washington Nationals', '664057');

INSERT INTO Player VALUES ('Stephen Strasburg', '37', '1988-07-20T00:00:00', 'P', 'San Diego State', 'Washington Nationals', '544931');

INSERT INTO Player VALUES ('Wander Suero', '51', '1991-09-15T00:00:00', 'P', '', 'Washington Nationals', '593833');

INSERT INTO Player VALUES ('Kurt Suzuki', '28', '1983-10-04T00:00:00', 'C', 'Cal State Fullerton', 'Washington Nationals', '435559');

INSERT INTO Player VALUES ('Michael A. Taylor', '3', '1991-03-26T00:00:00', 'CF', '', 'Washington Nationals', '572191');

INSERT INTO Player VALUES ('Trea Turner', '7', '1993-06-30T00:00:00', 'SS', 'North Carolina State', 'Washington Nationals', '607208');

INSERT INTO Player VALUES ('Austin Voth', '50', '1992-06-26T00:00:00', 'P', 'Washington', 'Washington Nationals', '608723');

INSERT INTO Player VALUES ('Austen Williams', '53', '1992-12-19T00:00:00', 'P', 'Texas State', 'Washington Nationals', '657117');

INSERT INTO Player VALUES ('Ryan Zimmerman', '11', '1984-09-28T00:00:00', '1B', 'Virginia', 'Washington Nationals', '475582');

INSERT INTO Player VALUES ('Tyler Bashlor', '49', '1993-04-16T00:00:00', 'P', 'South Georgia State', 'New York Mets', '641341');

INSERT INTO Player VALUES ('Gerson Bautista', '46', '1995-05-31T00:00:00', 'P', '', 'New York Mets', '639373');

INSERT INTO Player VALUES ('Jay Bruce', '19', '1987-04-03T00:00:00', 'RF', '', 'New York Mets', '457803');

INSERT INTO Player VALUES ('Gavin Cecchini', '', '1993-12-22T00:00:00', '2B', '', 'New York Mets', '608325');

INSERT INTO Player VALUES ('Yoenis Cespedes', '52', '1985-10-18T00:00:00', 'LF', '', 'New York Mets', '493316');

INSERT INTO Player VALUES ('Michael Conforto', '30', '1993-03-01T00:00:00', 'CF', 'Oregon State', 'New York Mets', '624424');

INSERT INTO Player VALUES ('Travis d'Arnaud', '18', '1989-02-10T00:00:00', 'C', '', 'New York Mets', '518595');

INSERT INTO Player VALUES ('Jacob deGrom', '48', '1988-06-19T00:00:00', 'P', 'Stetson', 'New York Mets', '594798');

INSERT INTO Player VALUES ('Chris Flexen', '', '1994-07-01T00:00:00', 'P', '', 'New York Mets', '623167');

INSERT INTO Player VALUES ('Wilmer Flores', '4', '1991-08-06T00:00:00', '1B', '', 'New York Mets', '527038');

INSERT INTO Player VALUES ('Todd Frazier', '21', '1986-02-12T00:00:00', '3B', 'Rutgers', 'New York Mets', '453943');

INSERT INTO Player VALUES ('Drew Gagnon', '47', '1990-06-26T00:00:00', 'P', 'Long Beach State', 'New York Mets', '543193');

INSERT INTO Player VALUES ('Robert Gsellman', '65', '1993-07-18T00:00:00', 'P', '', 'New York Mets', '607229');

INSERT INTO Player VALUES ('Luis Guillorme', '', '1994-09-27T00:00:00', 'SS', '', 'New York Mets', '641645');

INSERT INTO Player VALUES ('Eric Hanhold', '70', '1993-11-01T00:00:00', 'P', 'Florida', 'New York Mets', '621098');

INSERT INTO Player VALUES ('Franklyn Kilome', '', '1995-06-25T00:00:00', 'P', '', 'New York Mets', '642584');

INSERT INTO Player VALUES ('Juan Lagares', '12', '1989-03-17T00:00:00', 'CF', '', 'New York Mets', '501571');

INSERT INTO Player VALUES ('Seth Lugo', '67', '1989-11-17T00:00:00', 'P', 'Centenary College of Louisiana', 'New York Mets', '607625');

INSERT INTO Player VALUES ('Steven Matz', '32', '1991-05-29T00:00:00', 'P', '', 'New York Mets', '571927');

INSERT INTO Player VALUES ('Jeff McNeil', '68', '1992-04-08T00:00:00', '2B', 'Long Beach State', 'New York Mets', '643446');

INSERT INTO Player VALUES ('Tomas Nido', '3', '1994-04-12T00:00:00', 'C', '', 'New York Mets', '621512');

INSERT INTO Player VALUES ('Brandon Nimmo', '9', '1993-03-27T00:00:00', 'CF', '', 'New York Mets', '607043');

INSERT INTO Player VALUES ('Corey Oswalt', '55', '1993-09-03T00:00:00', 'P', '', 'New York Mets', '621261');

INSERT INTO Player VALUES ('Jordan Patterson', '', '1992-02-12T00:00:00', '1B', 'South Alabama', 'New York Mets', '641958');

INSERT INTO Player VALUES ('Tim Peterson', '63', '1991-02-22T00:00:00', 'P', 'Kentucky', 'New York Mets', '623402');

INSERT INTO Player VALUES ('Kevin Plawecki', '26', '1991-02-26T00:00:00', 'C', 'Purdue', 'New York Mets', '608700');

INSERT INTO Player VALUES ('Jacob Rhame', '35', '1993-03-16T00:00:00', 'P', 'Grayson CC', 'New York Mets', '642008');

INSERT INTO Player VALUES ('T.J. Rivera', '54', '1988-10-27T00:00:00', '3B', 'Troy', 'New York Mets', '608061');

INSERT INTO Player VALUES ('Amed Rosario', '1', '1995-11-20T00:00:00', 'SS', '', 'New York Mets', '642708');

INSERT INTO Player VALUES ('Paul Sewald', '51', '1990-05-26T00:00:00', 'P', 'San Diego', 'New York Mets', '623149');

INSERT INTO Player VALUES ('Dominic Smith', '22', '1995-06-15T00:00:00', '1B', '', 'New York Mets', '642086');

INSERT INTO Player VALUES ('Drew Smith', '62', '1993-09-24T00:00:00', 'P', 'Dallas Baptist', 'New York Mets', '622098');

INSERT INTO Player VALUES ('Anthony Swarzak', '38', '1985-09-10T00:00:00', 'P', '', 'New York Mets', '461872');

INSERT INTO Player VALUES ('Noah Syndergaard', '34', '1992-08-29T00:00:00', 'P', '', 'New York Mets', '592789');

INSERT INTO Player VALUES ('Jason Vargas', '40', '1983-02-02T00:00:00', 'P', 'Long Beach State', 'New York Mets', '450306');

INSERT INTO Player VALUES ('Bobby Wahl', '61', '1992-03-21T00:00:00', 'P', 'Mississippi', 'New York Mets', '592833');

INSERT INTO Player VALUES ('Zack Wheeler', '45', '1990-05-30T00:00:00', 'P', '', 'New York Mets', '554430');

INSERT INTO Player VALUES ('David Wright', '5', '1982-12-20T00:00:00', '3B', '', 'New York Mets', '431151');

INSERT INTO Player VALUES ('Daniel Zamora', '73', '1993-04-15T00:00:00', 'P', 'SUNY Stony Brook', 'New York Mets', '623354');

INSERT INTO Player VALUES ('Jason Adam', '', '1991-08-04T00:00:00', 'P', '', 'Kansas City Royals', '592094');

INSERT INTO Player VALUES ('Scott Barlow', '', '1992-12-18T00:00:00', 'P', '', 'Kansas City Royals', '605130');

INSERT INTO Player VALUES ('Scott Blewett', '', '1996-04-10T00:00:00', 'P', '', 'Kansas City Royals', '656240');

INSERT INTO Player VALUES ('Jorge Bonifacio', '38', '1993-06-04T00:00:00', 'RF', '', 'Kansas City Royals', '593528');

INSERT INTO Player VALUES ('Cheslor Cuthbert', '19', '1992-11-16T00:00:00', '3B', '', 'Kansas City Royals', '596144');

INSERT INTO Player VALUES ('Hunter Dozier', '17', '1991-08-22T00:00:00', '1B', 'Stephen F. Austin State', 'Kansas City Royals', '641531');

INSERT INTO Player VALUES ('Samir Duenez', '', '1996-06-11T00:00:00', '1B', '', 'Kansas City Royals', '642279');

INSERT INTO Player VALUES ('Danny Duffy', '41', '1988-12-21T00:00:00', 'P', '', 'Kansas City Royals', '518633');

INSERT INTO Player VALUES ('Heath Fillmyer', '49', '1994-05-16T00:00:00', 'P', 'Mercer County CC', 'Kansas City Royals', '641571');

INSERT INTO Player VALUES ('Brian Flynn', '33', '1990-04-19T00:00:00', 'P', 'Wichita State', 'Kansas City Royals', '543169');

INSERT INTO Player VALUES ('Cam Gallagher', '36', '1992-12-06T00:00:00', 'C', '', 'Kansas City Royals', '595956');

INSERT INTO Player VALUES ('Brian Goodwin', '25', '1990-11-02T00:00:00', 'CF', 'Miami Dade CC, FL', 'Kansas City Royals', '571718');

INSERT INTO Player VALUES ('Alex Gordon', '4', '1984-02-10T00:00:00', 'LF', 'Nebraska', 'Kansas City Royals', '460086');

INSERT INTO Player VALUES ('Conner Greene', '', '1995-04-04T00:00:00', 'P', '', 'Kansas City Royals', '641632');

INSERT INTO Player VALUES ('Kelvin Gutierrez', '', '1994-08-28T00:00:00', '3B', '', 'Kansas City Royals', '642721');

INSERT INTO Player VALUES ('Jesse Hahn', '32', '1989-07-30T00:00:00', 'P', 'Virginia Tech', 'Kansas City Royals', '534910');

INSERT INTO Player VALUES ('Arnaldo Hernandez', '', '1996-02-09T00:00:00', 'P', '', 'Kansas City Royals', '642511');

INSERT INTO Player VALUES ('Rosell Herrera', '7', '1992-10-16T00:00:00', 'RF', '', 'Kansas City Royals', '594011');

INSERT INTO Player VALUES ('Tim Hill', '54', '1990-02-10T00:00:00', 'P', 'Bacone College', 'Kansas City Royals', '657612');

INSERT INTO Player VALUES ('Jakob Junis', '65', '1992-09-16T00:00:00', 'P', '', 'Kansas City Royals', '596001');

INSERT INTO Player VALUES ('Brad Keller', '56', '1995-07-27T00:00:00', 'P', '', 'Kansas City Royals', '641745');

INSERT INTO Player VALUES ('Ian Kennedy', '31', '1984-12-19T00:00:00', 'P', 'Southern California', 'Kansas City Royals', '453178');

INSERT INTO Player VALUES ('Ben Lively', '48', '1992-03-05T00:00:00', 'P', 'Central Florida', 'Kansas City Royals', '594902');

INSERT INTO Player VALUES ('Jorge Lopez', '52', '1993-02-10T00:00:00', 'P', '', 'Kansas City Royals', '605347');

INSERT INTO Player VALUES ('Andres Machado', '', '1993-04-22T00:00:00', 'P', '', 'Kansas City Royals', '600921');

INSERT INTO Player VALUES ('Kevin McCarthy', '61', '1992-02-22T00:00:00', 'P', 'Marist', 'Kansas City Royals', '641838');

INSERT INTO Player VALUES ('Whit Merrifield', '15', '1989-01-24T00:00:00', '2B', 'South Carolina', 'Kansas City Royals', '593160');

INSERT INTO Player VALUES ('Adalberto Mondesi', '27', '1995-07-27T00:00:00', 'SS', '', 'Kansas City Royals', '609275');

INSERT INTO Player VALUES ('Jake Newberry', '68', '1994-11-20T00:00:00', 'P', '', 'Kansas City Royals', '623470');

INSERT INTO Player VALUES ('Ryan O'Hearn', '66', '1993-07-26T00:00:00', '1B', 'Sam Houston State', 'Kansas City Royals', '656811');

INSERT INTO Player VALUES ('Trevor Oaks', '', '1993-03-26T00:00:00', 'P', 'California Baptist', 'Kansas City Royals', '656805');

INSERT INTO Player VALUES ('Wily Peralta', '43', '1989-05-08T00:00:00', 'P', '', 'Kansas City Royals', '503449');

INSERT INTO Player VALUES ('Salvador Perez', '13', '1990-05-10T00:00:00', 'C', '', 'Kansas City Royals', '521692');

INSERT INTO Player VALUES ('Brett Phillips', '14', '1994-05-30T00:00:00', 'RF', '', 'Kansas City Royals', '621433');

INSERT INTO Player VALUES ('Eric Skoglund', '53', '1992-10-26T00:00:00', 'P', 'Central Florida', 'Kansas City Royals', '607215');

INSERT INTO Player VALUES ('Jorge Soler', '12', '1992-02-25T00:00:00', 'RF', '', 'Kansas City Royals', '624585');

INSERT INTO Player VALUES ('Glenn Sparkman', '57', '1992-05-11T00:00:00', 'P', 'Wharton County Junior College', 'Kansas City Royals', '642098');

INSERT INTO Player VALUES ('Bubba Starling', '', '1992-08-03T00:00:00', 'CF', '', 'Kansas City Royals', '605490');

INSERT INTO Player VALUES ('Josh Staumont', '', '1993-12-21T00:00:00', 'P', 'Azusa Pacific', 'Kansas City Royals', '622251');

INSERT INTO Player VALUES ('Meibrys Viloria', '72', '1997-02-15T00:00:00', 'C', '', 'Kansas City Royals', '650619');

INSERT INTO Player VALUES ('Bryan Abreu', '', '1997-04-22T00:00:00', 'P', '', 'Houston Astros', '650556');

INSERT INTO Player VALUES ('Jose Altuve', '27', '1990-05-06T00:00:00', '2B', '', 'Houston Astros', '514888');

INSERT INTO Player VALUES ('Rogelio Armenteros', '', '1994-06-30T00:00:00', 'P', '', 'Houston Astros', '660494');

INSERT INTO Player VALUES ('Alex Bregman', '2', '1994-03-30T00:00:00', '3B', 'Louisiana State', 'Houston Astros', '608324');

INSERT INTO Player VALUES ('Gerrit Cole', '45', '1990-09-08T00:00:00', 'P', 'UCLA', 'Houston Astros', '543037');

INSERT INTO Player VALUES ('Carlos Correa', '1', '1994-09-22T00:00:00', 'SS', '', 'Houston Astros', '621043');

INSERT INTO Player VALUES ('J.D. Davis', '28', '1993-04-27T00:00:00', '3B', 'Cal State Fullerton', 'Houston Astros', '605204');

INSERT INTO Player VALUES ('Dean Deetz', '67', '1993-11-29T00:00:00', 'P', 'Northeastern Oklahoma A&M', 'Houston Astros', '657209');

INSERT INTO Player VALUES ('Chris Devenski', '47', '1990-11-13T00:00:00', 'P', 'Cal State Fullerton', 'Houston Astros', '606965');

INSERT INTO Player VALUES ('Aledmys Diaz', '', '1990-08-01T00:00:00', 'SS', '', 'Houston Astros', '649557');

INSERT INTO Player VALUES ('Derek Fisher', '', '1993-08-21T00:00:00', 'CF', 'Virginia', 'Houston Astros', '605233');

INSERT INTO Player VALUES ('Reymin Guduan', '64', '1992-03-16T00:00:00', 'P', '', 'Houston Astros', '594056');

INSERT INTO Player VALUES ('Yuli Gurriel', '10', '1984-06-09T00:00:00', '1B', '', 'Houston Astros', '493329');

INSERT INTO Player VALUES ('Will Harris', '36', '1984-08-28T00:00:00', 'P', 'Louisiana State', 'Houston Astros', '501789');

INSERT INTO Player VALUES ('Chris Herrmann', '', '1987-11-24T00:00:00', 'C', 'Miami (FL)', 'Houston Astros', '543302');

INSERT INTO Player VALUES ('Josh James', '63', '1993-03-08T00:00:00', 'P', 'Western Oklahoma State College', 'Houston Astros', '657624');

INSERT INTO Player VALUES ('Tony Kemp', '18', '1991-10-31T00:00:00', 'LF', 'Vanderbilt', 'Houston Astros', '643393');

INSERT INTO Player VALUES ('Jake Marisnick', '6', '1991-03-30T00:00:00', 'CF', '', 'Houston Astros', '545350');

INSERT INTO Player VALUES ('Francis Martes', '', '1995-11-24T00:00:00', 'P', '', 'Houston Astros', '642564');

INSERT INTO Player VALUES ('Lance McCullers Jr.', '43', '1993-10-02T00:00:00', 'P', '', 'Houston Astros', '621121');

INSERT INTO Player VALUES ('Collin McHugh', '31', '1987-06-19T00:00:00', 'P', 'Berry, GA', 'Houston Astros', '543521');

INSERT INTO Player VALUES ('Roberto Osuna', '54', '1995-02-07T00:00:00', 'P', '', 'Houston Astros', '532077');

INSERT INTO Player VALUES ('Brad Peacock', '41', '1988-02-02T00:00:00', 'P', 'Palm Beach State CC', 'Houston Astros', '502748');

INSERT INTO Player VALUES ('Cionel Perez', '59', '1996-04-21T00:00:00', 'P', '', 'Houston Astros', '672335');

INSERT INTO Player VALUES ('Ryan Pressly', '55', '1988-12-15T00:00:00', 'P', '', 'Houston Astros', '519151');

INSERT INTO Player VALUES ('Josh Reddick', '22', '1987-02-19T00:00:00', 'RF', 'Middle Georgia State', 'Houston Astros', '502210');

INSERT INTO Player VALUES ('AJ Reed', '', '1993-05-10T00:00:00', '1B', 'Kentucky', 'Houston Astros', '607223');

INSERT INTO Player VALUES ('Brady Rodgers', '', '1990-09-17T00:00:00', 'P', 'Arizona State', 'Houston Astros', '572086');

INSERT INTO Player VALUES ('Hector Rondon', '30', '1988-02-26T00:00:00', 'P', '', 'Houston Astros', '444468');

INSERT INTO Player VALUES ('Joe Smith', '38', '1984-03-22T00:00:00', 'P', 'Wright State', 'Houston Astros', '501925');

INSERT INTO Player VALUES ('George Springer', '4', '1989-09-19T00:00:00', 'CF', 'Connecticut', 'Houston Astros', '543807');

INSERT INTO Player VALUES ('Max Stassi', '12', '1991-03-15T00:00:00', 'C', '', 'Houston Astros', '545358');

INSERT INTO Player VALUES ('Myles Straw', '26', '1994-10-17T00:00:00', 'CF', 'St. Johns River JC. FL', 'Houston Astros', '664702');

INSERT INTO Player VALUES ('Garrett Stubbs', '', '1993-05-26T00:00:00', 'C', 'Southern California', 'Houston Astros', '596117');

INSERT INTO Player VALUES ('Kyle Tucker', '3', '1997-01-17T00:00:00', 'RF', '', 'Houston Astros', '663656');

INSERT INTO Player VALUES ('Framber Valdez', '65', '1993-11-19T00:00:00', 'P', '', 'Houston Astros', '664285');

INSERT INTO Player VALUES ('Justin Verlander', '35', '1983-02-20T00:00:00', 'P', 'Old Dominion', 'Houston Astros', '434378');

INSERT INTO Player VALUES ('Tyler White', '13', '1990-10-29T00:00:00', '1B', 'Western Carolina', 'Houston Astros', '643603');

INSERT INTO Player VALUES ('Sergio Alcantara', '40', '1996-07-10T00:00:00', 'SS', '', 'Detroit Tigers', '642727');

INSERT INTO Player VALUES ('Victor Alcantara', '58', '1993-04-03T00:00:00', 'P', '', 'Detroit Tigers', '622505');

INSERT INTO Player VALUES ('Sandy Baez', '62', '1993-11-25T00:00:00', 'P', '', 'Detroit Tigers', '622783');

INSERT INTO Player VALUES ('Matthew Boyd', '48', '1991-02-02T00:00:00', 'P', 'Oregon State', 'Detroit Tigers', '571510');

INSERT INTO Player VALUES ('Miguel Cabrera', '24', '1983-04-18T00:00:00', '1B', '', 'Detroit Tigers', '408234');

INSERT INTO Player VALUES ('Jeimer Candelario', '46', '1993-11-24T00:00:00', '3B', '', 'Detroit Tigers', '600869');

INSERT INTO Player VALUES ('Ryan Carpenter', '', '1990-08-22T00:00:00', 'P', 'Gonzaga', 'Detroit Tigers', '543001');

INSERT INTO Player VALUES ('Nicholas Castellanos', '9', '1992-03-04T00:00:00', 'RF', '', 'Detroit Tigers', '592206');

INSERT INTO Player VALUES ('Willi Castro', '', '1997-04-24T00:00:00', 'SS', '', 'Detroit Tigers', '650489');

INSERT INTO Player VALUES ('Brandon Dixon', '', '1992-01-29T00:00:00', '2B', 'Arizona', 'Detroit Tigers', '641525');

INSERT INTO Player VALUES ('Buck Farmer', '45', '1991-02-20T00:00:00', 'P', 'Georgia Tech', 'Detroit Tigers', '571656');

INSERT INTO Player VALUES ('Jose Manuel Fernandez', '', '1993-02-13T00:00:00', 'P', '', 'Detroit Tigers', '622774');

INSERT INTO Player VALUES ('Michael Fulmer', '32', '1993-03-15T00:00:00', 'P', '', 'Detroit Tigers', '605242');

INSERT INTO Player VALUES ('Mike Gerber', '13', '1992-07-08T00:00:00', 'CF', 'Creighton', 'Detroit Tigers', '595222');

INSERT INTO Player VALUES ('Niko Goodrum', '28', '1992-02-28T00:00:00', '2B', '', 'Detroit Tigers', '592348');

INSERT INTO Player VALUES ('Shane Greene', '61', '1988-11-17T00:00:00', 'P', 'Daytona State', 'Detroit Tigers', '572888');

INSERT INTO Player VALUES ('Grayson Greiner', '17', '1992-10-11T00:00:00', 'C', 'South Carolina', 'Detroit Tigers', '606988');

INSERT INTO Player VALUES ('Matt Hall', '64', '1993-07-23T00:00:00', 'P', 'Missouri State', 'Detroit Tigers', '664180');

INSERT INTO Player VALUES ('Blaine Hardy', '36', '1987-03-14T00:00:00', 'P', 'Lewis-Clark State, ID', 'Detroit Tigers', '543278');

INSERT INTO Player VALUES ('John Hicks', '55', '1989-08-31T00:00:00', '1B', 'Virginia', 'Detroit Tigers', '543308');

INSERT INTO Player VALUES ('Eduardo Jimenez', '', '1995-04-04T00:00:00', 'P', '', 'Detroit Tigers', '621592');

INSERT INTO Player VALUES ('Joe Jimenez', '77', '1995-01-17T00:00:00', 'P', '', 'Detroit Tigers', '641729');

INSERT INTO Player VALUES ('JaCoby Jones', '21', '1992-05-10T00:00:00', 'LF', 'Louisiana State', 'Detroit Tigers', '592444');

INSERT INTO Player VALUES ('Dawel Lugo', '18', '1994-12-31T00:00:00', '2B', '', 'Detroit Tigers', '608475');

INSERT INTO Player VALUES ('Mikie Mahtook', '8', '1989-11-30T00:00:00', 'CF', 'Louisiana State', 'Detroit Tigers', '543484');

INSERT INTO Player VALUES ('James McCann', '34', '1990-06-13T00:00:00', 'C', 'Arkansas', 'Detroit Tigers', '543510');

INSERT INTO Player VALUES ('Daniel Norris', '44', '1993-04-25T00:00:00', 'P', '', 'Detroit Tigers', '596057');

INSERT INTO Player VALUES ('Franklin Perez', '', '1997-12-06T00:00:00', 'P', '', 'Detroit Tigers', '658530');

INSERT INTO Player VALUES ('Dustin Peterson', '', '1994-09-10T00:00:00', 'RF', '', 'Detroit Tigers', '640460');

INSERT INTO Player VALUES ('Zac Reininger', '26', '1993-01-28T00:00:00', 'P', 'Hill College', 'Detroit Tigers', '643617');

INSERT INTO Player VALUES ('Victor Reyes', '22', '1994-10-05T00:00:00', 'LF', '', 'Detroit Tigers', '622682');

INSERT INTO Player VALUES ('Ronny Rodriguez', '60', '1992-04-17T00:00:00', '2B', '', 'Detroit Tigers', '500135');

INSERT INTO Player VALUES ('Gregory Soto', '65', '1995-02-11T00:00:00', 'P', '', 'Detroit Tigers', '642397');

INSERT INTO Player VALUES ('Christin Stewart', '14', '1993-12-10T00:00:00', 'LF', 'Tennessee', 'Detroit Tigers', '621514');

INSERT INTO Player VALUES ('Daniel Stumpf', '68', '1991-01-04T00:00:00', 'P', 'San Jacinto College', 'Detroit Tigers', '621385');

INSERT INTO Player VALUES ('Spencer Turnbull', '56', '1992-09-18T00:00:00', 'P', 'Alabama', 'Detroit Tigers', '605513');

INSERT INTO Player VALUES ('Drew VerHagen', '54', '1990-10-22T00:00:00', 'P', 'Vanderbilt', 'Detroit Tigers', '572403');

INSERT INTO Player VALUES ('Alex Wilson', '30', '1986-11-03T00:00:00', 'P', 'Texas A&M', 'Detroit Tigers', '543935');

INSERT INTO Player VALUES ('Jordan Zimmermann', '27', '1986-05-23T00:00:00', 'P', 'Wisconsin - Stevens Point', 'Detroit Tigers', '519455');
INSERT INTO Player VALUES ('Yency Almonte', '62', '1994-06-04T00:00:00', 'P', '', 'Colorado Rockies', '622075');

INSERT INTO Player VALUES ('Tyler Anderson', '44', '1989-12-30T00:00:00', 'P', 'Oregon', 'Colorado Rockies', '542881');

INSERT INTO Player VALUES ('Nolan Arenado', '28', '1991-04-16T00:00:00', '3B', '', 'Colorado Rockies', '571448');

INSERT INTO Player VALUES ('Chad Bettis', '35', '1989-04-26T00:00:00', 'P', 'Texas Tech', 'Colorado Rockies', '518452');

INSERT INTO Player VALUES ('Charlie Blackmon', '19', '1986-07-01T00:00:00', 'CF', 'Georgia Tech', 'Colorado Rockies', '453568');

INSERT INTO Player VALUES ('Ryan Castellani', '', '1996-04-01T00:00:00', 'P', '', 'Colorado Rockies', '624418');

INSERT INTO Player VALUES ('Noel Cuevas', '56', '1991-10-02T00:00:00', 'RF', 'Interamerican University of Puerto Rico', 'Colorado Rockies', '571595');

INSERT INTO Player VALUES ('David Dahl', '26', '1994-04-01T00:00:00', 'RF', '', 'Colorado Rockies', '621311');

INSERT INTO Player VALUES ('Wade Davis', '71', '1985-09-07T00:00:00', 'P', '', 'Colorado Rockies', '451584');

INSERT INTO Player VALUES ('Yonathan Daza', '72', '1994-02-28T00:00:00', 'CF', '', 'Colorado Rockies', '602074');

INSERT INTO Player VALUES ('Ian Desmond', '20', '1985-09-20T00:00:00', '1B', '', 'Colorado Rockies', '435622');

INSERT INTO Player VALUES ('Mike Dunn', '38', '1985-05-23T00:00:00', 'P', 'CC of Southern Nevada', 'Colorado Rockies', '445197');

INSERT INTO Player VALUES ('Carlos Estevez', '54', '1992-12-28T00:00:00', 'P', '', 'Colorado Rockies', '608032');

INSERT INTO Player VALUES ('Kyle Freeland', '21', '1993-05-14T00:00:00', 'P', 'Evansville', 'Colorado Rockies', '607536');

INSERT INTO Player VALUES ('Josh Fuentes', '', '1993-02-19T00:00:00', '3B', 'Missouri Baptist', 'Colorado Rockies', '658069');

INSERT INTO Player VALUES ('Rayan Gonzalez', '64', '1990-10-18T00:00:00', 'P', 'Bethune-Cookman', 'Colorado Rockies', '543234');

INSERT INTO Player VALUES ('Jon Gray', '55', '1991-11-05T00:00:00', 'P', 'Oklahoma', 'Colorado Rockies', '592351');

INSERT INTO Player VALUES ('Garrett Hampson', '1', '1994-10-10T00:00:00', '2B', 'Long Beach State', 'Colorado Rockies', '641658');

INSERT INTO Player VALUES ('Sam Hilliard', '', '1994-02-21T00:00:00', 'RF', 'Wichita State', 'Colorado Rockies', '656541');

INSERT INTO Player VALUES ('Jeff Hoffman', '34', '1993-01-08T00:00:00', 'P', 'East Carolina', 'Colorado Rockies', '656546');

INSERT INTO Player VALUES ('Sam Howard', '61', '1993-03-05T00:00:00', 'P', 'Georgia Southern', 'Colorado Rockies', '607572');

INSERT INTO Player VALUES ('Chris Iannetta', '22', '1983-04-08T00:00:00', 'C', 'North Carolina', 'Colorado Rockies', '455104');

INSERT INTO Player VALUES ('DJ Johnson', '63', '1989-08-30T00:00:00', 'P', 'Western Oregon', 'Colorado Rockies', '597113');

INSERT INTO Player VALUES ('Justin Lawrence', '', '1994-11-25T00:00:00', 'P', 'Daytona JC, FL', 'Colorado Rockies', '664875');

INSERT INTO Player VALUES ('German Marquez', '48', '1995-02-22T00:00:00', 'P', '', 'Colorado Rockies', '608566');

INSERT INTO Player VALUES ('Jake McGee', '51', '1986-08-06T00:00:00', 'P', '', 'Colorado Rockies', '459429');

INSERT INTO Player VALUES ('Ryan McMahon', '24', '1994-12-14T00:00:00', '1B', '', 'Colorado Rockies', '641857');

INSERT INTO Player VALUES ('Tom Murphy', '23', '1991-04-03T00:00:00', 'C', 'SUNY Buffalo', 'Colorado Rockies', '608596');

INSERT INTO Player VALUES ('Harrison Musgrave', '59', '1992-03-03T00:00:00', 'P', 'West Virginia', 'Colorado Rockies', '643466');

INSERT INTO Player VALUES ('Scott Oberg', '45', '1990-03-13T00:00:00', 'P', 'Connecticut', 'Colorado Rockies', '623184');

INSERT INTO Player VALUES ('Seunghwan Oh', '18', '1982-07-15T00:00:00', 'P', 'Dankook University', 'Colorado Rockies', '493200');

INSERT INTO Player VALUES ('Chris Rusin', '52', '1986-10-22T00:00:00', 'P', 'Kentucky', 'Colorado Rockies', '543734');

INSERT INTO Player VALUES ('Antonio Senzatela', '49', '1995-01-21T00:00:00', 'P', '', 'Colorado Rockies', '622608');

INSERT INTO Player VALUES ('Bryan Shaw', '29', '1987-11-08T00:00:00', 'P', 'Long Beach State', 'Colorado Rockies', '543766');

INSERT INTO Player VALUES ('Trevor Story', '27', '1992-11-15T00:00:00', 'SS', '', 'Colorado Rockies', '596115');

INSERT INTO Player VALUES ('Raimel Tapia', '15', '1994-02-04T00:00:00', 'CF', '', 'Colorado Rockies', '606132');

INSERT INTO Player VALUES ('Mike Tauchman', '3', '1990-12-03T00:00:00', 'CF', 'Bradley', 'Colorado Rockies', '643565');

INSERT INTO Player VALUES ('Jesus Tinoco', '74', '1995-04-30T00:00:00', 'P', '', 'Colorado Rockies', '622786');

INSERT INTO Player VALUES ('Pat Valaika', '4', '1992-09-09T00:00:00', '3B', 'UCLA', 'Colorado Rockies', '642162');

INSERT INTO Player VALUES ('Tony Wolters', '14', '1992-06-09T00:00:00', 'C', '', 'Colorado Rockies', '547172');
INSERT INTO Player VALUES ('Greg Allen', '1', '1993-03-15T00:00:00', 'CF', 'San Diego State', 'Cleveland Indians', '656185');

INSERT INTO Player VALUES ('Yonder Alonso', '17', '1987-04-08T00:00:00', '1B', 'Miami', 'Cleveland Indians', '475174');

INSERT INTO Player VALUES ('Cody Anderson', '56', '1990-09-14T00:00:00', 'P', 'Feather River CC', 'Cleveland Indians', '594736');

INSERT INTO Player VALUES ('Trevor Bauer', '47', '1991-01-17T00:00:00', 'P', 'UCLA', 'Cleveland Indians', '545333');

INSERT INTO Player VALUES ('Shane Bieber', '57', '1995-05-31T00:00:00', 'P', 'UC Santa Barbara', 'Cleveland Indians', '669456');

INSERT INTO Player VALUES ('Bobby Bradley', '', '1996-05-29T00:00:00', '1B', '', 'Cleveland Indians', '656252');

INSERT INTO Player VALUES ('Carlos Carrasco', '59', '1987-03-21T00:00:00', 'P', '', 'Cleveland Indians', '471911');

INSERT INTO Player VALUES ('Yu Chang', '75', '1995-08-18T00:00:00', 'SS', '', 'Cleveland Indians', '644374');

INSERT INTO Player VALUES ('Adam Cimber', '90', '1990-08-15T00:00:00', 'P', 'San Francisco', 'Cleveland Indians', '643256');

INSERT INTO Player VALUES ('Mike Clevinger', '52', '1990-12-21T00:00:00', 'P', 'Seminole State College (FL)', 'Cleveland Indians', '605182');

INSERT INTO Player VALUES ('Yandy Diaz', '36', '1991-08-08T00:00:00', '3B', '', 'Cleveland Indians', '650490');

INSERT INTO Player VALUES ('Jon Edwards', '46', '1988-01-08T00:00:00', 'P', '', 'Cleveland Indians', '457754');

INSERT INTO Player VALUES ('Edwin Encarnacion', '10', '1983-01-07T00:00:00', 'DH', '', 'Cleveland Indians', '429665');

INSERT INTO Player VALUES ('Yan Gomes', '7', '1987-07-19T00:00:00', 'C', 'Barry', 'Cleveland Indians', '543228');

INSERT INTO Player VALUES ('Nick Goody', '44', '1991-07-06T00:00:00', 'P', 'Louisiana State', 'Cleveland Indians', '580792');

INSERT INTO Player VALUES ('Eric Haase', '38', '1992-12-18T00:00:00', 'C', '', 'Cleveland Indians', '606992');

INSERT INTO Player VALUES ('Brad Hand', '33', '1990-03-20T00:00:00', 'P', '', 'Cleveland Indians', '543272');

INSERT INTO Player VALUES ('Sam Hentges', '', '1996-07-18T00:00:00', 'P', '', 'Cleveland Indians', '656529');

INSERT INTO Player VALUES ('James Hoyt', '', '1986-09-30T00:00:00', 'P', 'Palomar CC', 'Cleveland Indians', '624586');

INSERT INTO Player VALUES ('Chih-Wei Hu', '', '1993-11-04T00:00:00', 'P', '', 'Cleveland Indians', '629496');

INSERT INTO Player VALUES ('Jason Kipnis', '22', '1987-04-03T00:00:00', '2B', 'Arizona State', 'Cleveland Indians', '543401');

INSERT INTO Player VALUES ('Corey Kluber', '28', '1986-04-10T00:00:00', 'P', 'Stetson', 'Cleveland Indians', '446372');

INSERT INTO Player VALUES ('Francisco Lindor', '12', '1993-11-14T00:00:00', 'SS', '', 'Cleveland Indians', '596019');

INSERT INTO Player VALUES ('Walker Lockett', '', '1994-05-03T00:00:00', 'P', '', 'Cleveland Indians', '621141');

INSERT INTO Player VALUES ('Jordan Luplow', '', '1993-09-26T00:00:00', 'RF', 'Fresno State', 'Cleveland Indians', '656669');

INSERT INTO Player VALUES ('Leonys Martin', '13', '1988-03-06T00:00:00', 'CF', '', 'Cleveland Indians', '547982');

INSERT INTO Player VALUES ('Jean Carlos Mejia', '', '1996-08-26T00:00:00', 'P', '', 'Cleveland Indians', '650496');

INSERT INTO Player VALUES ('Oscar Mercado', '', '1994-12-16T00:00:00', 'CF', '', 'Cleveland Indians', '640458');

INSERT INTO Player VALUES ('Max Moroff', '', '1993-05-13T00:00:00', 'SS', '', 'Cleveland Indians', '621559');

INSERT INTO Player VALUES ('Tyler Naquin', '30', '1991-04-24T00:00:00', 'RF', 'Texas A&M', 'Cleveland Indians', '571980');

INSERT INTO Player VALUES ('Tyler Olson', '49', '1989-10-02T00:00:00', 'P', 'Gonzaga', 'Cleveland Indians', '621397');

INSERT INTO Player VALUES ('Dan Otero', '61', '1985-02-19T00:00:00', 'P', 'South Florida', 'Cleveland Indians', '519096');

INSERT INTO Player VALUES ('Roberto Perez', '55', '1988-12-23T00:00:00', 'C', 'Florida Gateway College', 'Cleveland Indians', '547379');

INSERT INTO Player VALUES ('Adam Plutko', '45', '1991-10-03T00:00:00', 'P', 'UCLA', 'Cleveland Indians', '592644');

INSERT INTO Player VALUES ('Jose Ramirez', '11', '1992-09-17T00:00:00', '3B', '', 'Cleveland Indians', '608070');

INSERT INTO Player VALUES ('Neil Ramirez', '58', '1989-05-25T00:00:00', 'P', '', 'Cleveland Indians', '519166');

INSERT INTO Player VALUES ('Danny Salazar', '31', '1990-01-11T00:00:00', 'P', '', 'Cleveland Indians', '517593');

INSERT INTO Player VALUES ('Eric Stamets', '66', '1991-09-25T00:00:00', '2B', 'Evansville', 'Cleveland Indians', '608715');

INSERT INTO Player VALUES ('Ben Taylor', '35', '1992-11-12T00:00:00', 'P', 'South Alabama', 'Cleveland Indians', '664701');

INSERT INTO Player VALUES ('Bradley Zimmer', '4', '1992-11-27T00:00:00', 'CF', 'San Francisco', 'Cleveland Indians', '605548');

INSERT INTO Player VALUES ('Aristides Aquino', '63', '1994-04-22T00:00:00', 'RF', '', 'Cincinnati Reds', '606157');

INSERT INTO Player VALUES ('Homer Bailey', '34', '1986-05-03T00:00:00', 'P', '', 'Cincinnati Reds', '456701');

INSERT INTO Player VALUES ('Tucker Barnhart', '16', '1991-01-07T00:00:00', 'C', '', 'Cincinnati Reds', '571466');

INSERT INTO Player VALUES ('Alex Blandino', '2', '1992-11-06T00:00:00', '2B', 'Stanford', 'Cincinnati Reds', '607468');

INSERT INTO Player VALUES ('Matt Bowman', '59', '1991-05-31T00:00:00', 'P', 'Princeton', 'Cincinnati Reds', '621199');

INSERT INTO Player VALUES ('Curt Casali', '12', '1988-11-09T00:00:00', 'C', 'Vanderbilt', 'Cincinnati Reds', '592200');

INSERT INTO Player VALUES ('Luis Castillo', '58', '1992-12-12T00:00:00', 'P', '', 'Cincinnati Reds', '622491');

INSERT INTO Player VALUES ('Anthony DeSclafani', '28', '1990-04-18T00:00:00', 'P', 'Florida', 'Cincinnati Reds', '543101');

INSERT INTO Player VALUES ('Phillip Ervin', '27', '1992-07-15T00:00:00', 'RF', 'Samford', 'Cincinnati Reds', '640447');

INSERT INTO Player VALUES ('Brandon Finnegan', '29', '1993-04-14T00:00:00', 'P', 'Texas Christian', 'Cincinnati Reds', '605232');

INSERT INTO Player VALUES ('Amir Garrett', '50', '1992-05-03T00:00:00', 'P', 'St. John's (NY)', 'Cincinnati Reds', '607237');

INSERT INTO Player VALUES ('Scooter Gennett', '3', '1990-05-01T00:00:00', '2B', '', 'Cincinnati Reds', '571697');

INSERT INTO Player VALUES ('Juan Graterol', '15', '1989-02-14T00:00:00', 'C', '', 'Cincinnati Reds', '492802');

INSERT INTO Player VALUES ('Billy Hamilton', '6', '1990-09-09T00:00:00', 'CF', '', 'Cincinnati Reds', '571740');

INSERT INTO Player VALUES ('Jimmy Herget', '', '1993-09-09T00:00:00', 'P', 'South Florida', 'Cincinnati Reds', '623474');

INSERT INTO Player VALUES ('David Hernandez', '37', '1985-05-13T00:00:00', 'P', 'Cosumnes River College', 'Cincinnati Reds', '456696');

INSERT INTO Player VALUES ('Jared Hughes', '48', '1985-07-04T00:00:00', 'P', 'Long Beach State', 'Cincinnati Reds', '453172');

INSERT INTO Player VALUES ('Raisel Iglesias', '26', '1990-01-04T00:00:00', 'P', '', 'Cincinnati Reds', '628452');

INSERT INTO Player VALUES ('Shed Long', '70', '1995-08-22T00:00:00', '2B', '', 'Cincinnati Reds', '643418');

INSERT INTO Player VALUES ('Jose Lopez', '66', '1993-09-01T00:00:00', 'P', 'Seton Hall', 'Cincinnati Reds', '656661');

INSERT INTO Player VALUES ('Michael Lorenzen', '21', '1992-01-04T00:00:00', 'P', 'Cal State Fullerton', 'Cincinnati Reds', '547179');

INSERT INTO Player VALUES ('Tyler Mahle', '30', '1994-09-29T00:00:00', 'P', '', 'Cincinnati Reds', '641816');

INSERT INTO Player VALUES ('Keury Mella', '60', '1993-08-02T00:00:00', 'P', '', 'Cincinnati Reds', '622492');

INSERT INTO Player VALUES ('Wandy Peralta', '53', '1991-07-27T00:00:00', 'P', '', 'Cincinnati Reds', '593974');

INSERT INTO Player VALUES ('Jose Peraza', '9', '1994-04-30T00:00:00', 'SS', '', 'Cincinnati Reds', '606299');

INSERT INTO Player VALUES ('Tanner Rainey', '44', '1992-12-25T00:00:00', 'P', 'West Alabama', 'Cincinnati Reds', '663432');

INSERT INTO Player VALUES ('Cody Reed', '23', '1993-04-15T00:00:00', 'P', 'Northwest Mississippi CC', 'Cincinnati Reds', '642003');

INSERT INTO Player VALUES ('Jesus Reyes', '57', '1993-02-21T00:00:00', 'P', '', 'Cincinnati Reds', '660875');

INSERT INTO Player VALUES ('Sal Romano', '47', '1993-10-12T00:00:00', 'P', '', 'Cincinnati Reds', '607219');

INSERT INTO Player VALUES ('Scott Schebler', '43', '1990-10-06T00:00:00', 'RF', 'Des Moines Area CC', 'Cincinnati Reds', '594988');

INSERT INTO Player VALUES ('Lucas Sims', '39', '1994-05-10T00:00:00', 'P', '', 'Cincinnati Reds', '608371');

INSERT INTO Player VALUES ('Jose Siri', '75', '1995-07-22T00:00:00', 'CF', '', 'Cincinnati Reds', '642350');

INSERT INTO Player VALUES ('Jackson Stephens', '62', '1994-05-11T00:00:00', 'P', '', 'Cincinnati Reds', '623451');

INSERT INTO Player VALUES ('Robert Stephenson', '55', '1993-02-24T00:00:00', 'P', '', 'Cincinnati Reds', '596112');

INSERT INTO Player VALUES ('Eugenio Suarez', '7', '1991-07-18T00:00:00', '3B', '', 'Cincinnati Reds', '553993');

INSERT INTO Player VALUES ('Blake Trahan', '51', '1993-09-05T00:00:00', 'SS', 'Louisiana - Lafayette', 'Cincinnati Reds', '664167');

INSERT INTO Player VALUES ('Joey Votto', '19', '1983-09-10T00:00:00', '1B', '', 'Cincinnati Reds', '458015');

INSERT INTO Player VALUES ('Jesse Winker', '33', '1993-08-17T00:00:00', 'RF', '', 'Cincinnati Reds', '608385');

INSERT INTO Player VALUES ('Matt Wisler', '41', '1992-09-12T00:00:00', 'P', '', 'Cincinnati Reds', '605538');

INSERT INTO Player VALUES ('Albert Almora Jr.', '5', '1994-04-16T00:00:00', 'CF', '', 'Chicago Cubs', '546991');

INSERT INTO Player VALUES ('Adbert Alzolay', '73', '1995-03-01T00:00:00', 'P', '', 'Chicago Cubs', '640470');

INSERT INTO Player VALUES ('Javier Baez', '9', '1992-12-01T00:00:00', '2B', '', 'Chicago Cubs', '595879');

INSERT INTO Player VALUES ('David Bote', '13', '1993-04-07T00:00:00', '3B', 'Neosho CC, KS', 'Chicago Cubs', '623520');

INSERT INTO Player VALUES ('Kris Bryant', '17', '1992-01-04T00:00:00', '3B', 'San Diego', 'Chicago Cubs', '592178');

INSERT INTO Player VALUES ('Victor Caratini', '7', '1993-08-17T00:00:00', 'C', 'Miami Dade CC', 'Chicago Cubs', '605170');

INSERT INTO Player VALUES ('Tyler Chatwood', '21', '1989-12-16T00:00:00', 'P', '', 'Chicago Cubs', '543022');

INSERT INTO Player VALUES ('Steve Cishek', '41', '1986-06-18T00:00:00', 'P', 'Carson-Newman', 'Chicago Cubs', '518553');

INSERT INTO Player VALUES ('Willson Contreras', '40', '1992-05-13T00:00:00', 'C', '', 'Chicago Cubs', '575929');

INSERT INTO Player VALUES ('Yu Darvish', '11', '1986-08-16T00:00:00', 'P', '', 'Chicago Cubs', '506433');

INSERT INTO Player VALUES ('Taylor Davis', '53', '1989-11-28T00:00:00', 'C', 'Morehead State', 'Chicago Cubs', '543089');

INSERT INTO Player VALUES ('Brian Duensing', '32', '1983-02-22T00:00:00', 'P', 'Nebraska', 'Chicago Cubs', '488846');

INSERT INTO Player VALUES ('Carl Edwards Jr.', '6', '1991-09-03T00:00:00', 'P', '', 'Chicago Cubs', '605218');

INSERT INTO Player VALUES ('Cole Hamels', '35', '1983-12-27T00:00:00', 'P', '', 'Chicago Cubs', '430935');

INSERT INTO Player VALUES ('Justin Hancock', '54', '1990-10-28T00:00:00', 'P', 'Lincoln Trail CC, IL', 'Chicago Cubs', '606995');

INSERT INTO Player VALUES ('Ian Happ', '8', '1994-08-12T00:00:00', 'CF', 'Cincinnati', 'Chicago Cubs', '664023');

INSERT INTO Player VALUES ('Kyle Hendricks', '28', '1989-12-07T00:00:00', 'P', 'Dartmouth', 'Chicago Cubs', '543294');

INSERT INTO Player VALUES ('Jason Heyward', '22', '1989-08-09T00:00:00', 'RF', '', 'Chicago Cubs', '518792');

INSERT INTO Player VALUES ('Brandon Kintzler', '20', '1984-08-01T00:00:00', 'P', 'Dixie State, UT', 'Chicago Cubs', '445213');

INSERT INTO Player VALUES ('Tommy La Stella', '2', '1989-01-31T00:00:00', '3B', 'Coastal Carolina', 'Chicago Cubs', '600303');

INSERT INTO Player VALUES ('Jon Lester', '34', '1984-01-07T00:00:00', 'P', '', 'Chicago Cubs', '452657');

INSERT INTO Player VALUES ('Dillon Maples', '36', '1992-05-09T00:00:00', 'P', '', 'Chicago Cubs', '596027');

INSERT INTO Player VALUES ('Alec Mills', '24', '1991-11-30T00:00:00', 'P', 'Tennessee-Martin', 'Chicago Cubs', '621219');

INSERT INTO Player VALUES ('Mike Montgomery', '38', '1989-07-01T00:00:00', 'P', '', 'Chicago Cubs', '543557');

INSERT INTO Player VALUES ('Brandon Morrow', '15', '1984-07-26T00:00:00', 'P', 'California', 'Chicago Cubs', '453344');

INSERT INTO Player VALUES ('James Norwood', '57', '1993-12-24T00:00:00', 'P', 'Saint Louis', 'Chicago Cubs', '656803');

INSERT INTO Player VALUES ('Jose Quintana', '62', '1989-01-24T00:00:00', 'P', '', 'Chicago Cubs', '500779');

INSERT INTO Player VALUES ('Anthony Rizzo', '44', '1989-08-08T00:00:00', '1B', '', 'Chicago Cubs', '519203');

INSERT INTO Player VALUES ('Randy Rosario', '47', '1994-05-18T00:00:00', 'P', '', 'Chicago Cubs', '600968');

INSERT INTO Player VALUES ('Kyle Ryan', '', '1991-09-25T00:00:00', 'P', '', 'Chicago Cubs', '594986');

INSERT INTO Player VALUES ('Kyle Schwarber', '12', '1993-03-05T00:00:00', 'LF', 'Indiana', 'Chicago Cubs', '656941');

INSERT INTO Player VALUES ('Justin Steele', '', '1995-07-11T00:00:00', 'P', '', 'Chicago Cubs', '657006');

INSERT INTO Player VALUES ('Pedro Strop', '46', '1985-06-13T00:00:00', 'P', '', 'Chicago Cubs', '467008');

INSERT INTO Player VALUES ('Ronald Torreyes', '', '1992-09-02T00:00:00', '2B', '', 'Chicago Cubs', '591720');

INSERT INTO Player VALUES ('Jen-Ho Tseng', '52', '1994-10-03T00:00:00', 'P', '', 'Chicago Cubs', '627500');

INSERT INTO Player VALUES ('Duane Underwood Jr.', '51', '1994-07-20T00:00:00', 'P', '', 'Chicago Cubs', '621249');

INSERT INTO Player VALUES ('Allen Webster', '61', '1990-02-10T00:00:00', 'P', '', 'Chicago Cubs', '543903');

INSERT INTO Player VALUES ('Rowan Wick', '', '1992-11-09T00:00:00', 'P', 'Cypress CC, CA', 'Chicago Cubs', '592858');

INSERT INTO Player VALUES ('Mark Zagunis', '', '1993-02-05T00:00:00', 'RF', 'Virginia Tech', 'Chicago Cubs', '657145');

INSERT INTO Player VALUES ('Ben Zobrist', '18', '1981-05-26T00:00:00', '2B', 'Dallas Baptist', 'Chicago Cubs', '450314');

INSERT INTO Player VALUES ('Matt Barnes', '32', '1990-06-17T00:00:00', 'P', 'Connecticut', 'Boston Red Sox', '598264');

INSERT INTO Player VALUES ('Andrew Benintendi', '16', '1994-07-06T00:00:00', 'LF', 'Arkansas', 'Boston Red Sox', '643217');

INSERT INTO Player VALUES ('Mookie Betts', '50', '1992-10-07T00:00:00', 'RF', '', 'Boston Red Sox', '605141');

INSERT INTO Player VALUES ('Xander Bogaerts', '2', '1992-10-01T00:00:00', 'SS', '', 'Boston Red Sox', '593428');

INSERT INTO Player VALUES ('Jackie Bradley Jr.', '19', '1990-04-19T00:00:00', 'CF', 'South Carolina', 'Boston Red Sox', '598265');

INSERT INTO Player VALUES ('Ryan Brasier', '70', '1987-08-26T00:00:00', 'P', 'Weatherford College', 'Boston Red Sox', '518489');

INSERT INTO Player VALUES ('Colten Brewer', '', '1992-10-29T00:00:00', 'P', '', 'Boston Red Sox', '605155');

INSERT INTO Player VALUES ('Michael Chavis', '', '1995-08-11T00:00:00', '3B', '', 'Boston Red Sox', '656308');

INSERT INTO Player VALUES ('Rafael Devers', '11', '1996-10-24T00:00:00', '3B', '', 'Boston Red Sox', '646240');

INSERT INTO Player VALUES ('Heath Hembree', '37', '1989-01-13T00:00:00', 'P', 'College of Charleston', 'Boston Red Sox', '592390');

INSERT INTO Player VALUES ('Darwinzon Hernandez', '', '1996-12-17T00:00:00', 'P', '', 'Boston Red Sox', '650382');

INSERT INTO Player VALUES ('Marco Hernandez', '40', '1992-09-06T00:00:00', '3B', '', 'Boston Red Sox', '593523');

INSERT INTO Player VALUES ('Brock Holt', '12', '1988-06-11T00:00:00', '2B', 'Rice', 'Boston Red Sox', '571788');

INSERT INTO Player VALUES ('Brian Johnson', '61', '1990-12-07T00:00:00', 'P', 'Florida', 'Boston Red Sox', '598271');

INSERT INTO Player VALUES ('Travis Lakins', '', '1994-06-29T00:00:00', 'P', 'Ohio State', 'Boston Red Sox', '664042');

INSERT INTO Player VALUES ('Sandy Leon', '3', '1989-03-13T00:00:00', 'C', '', 'Boston Red Sox', '506702');

INSERT INTO Player VALUES ('Tzu-Wei Lin', '30', '1994-02-15T00:00:00', 'SS', '', 'Boston Red Sox', '624407');

INSERT INTO Player VALUES ('J.D. Martinez', '28', '1987-08-21T00:00:00', 'LF', 'Nova Southeastern', 'Boston Red Sox', '502110');

INSERT INTO Player VALUES ('Mitch Moreland', '18', '1985-09-06T00:00:00', '1B', 'Mississippi State', 'Boston Red Sox', '519048');

INSERT INTO Player VALUES ('Eduardo Nunez', '36', '1987-06-15T00:00:00', '2B', '', 'Boston Red Sox', '456488');

INSERT INTO Player VALUES ('Steve Pearce', '25', '1983-04-13T00:00:00', '1B', 'South Carolina', 'Boston Red Sox', '456665');

INSERT INTO Player VALUES ('Dustin Pedroia', '15', '1983-08-17T00:00:00', '2B', 'Arizona State', 'Boston Red Sox', '456030');

INSERT INTO Player VALUES ('Rick Porcello', '22', '1988-12-27T00:00:00', 'P', '', 'Boston Red Sox', '519144');

INSERT INTO Player VALUES ('Bobby Poyner', '66', '1992-12-01T00:00:00', 'P', 'Florida', 'Boston Red Sox', '596074');

INSERT INTO Player VALUES ('David Price', '24', '1985-08-26T00:00:00', 'P', 'Vanderbilt', 'Boston Red Sox', '456034');

INSERT INTO Player VALUES ('Denyi Reyes', '', '1996-11-02T00:00:00', 'P', '', 'Boston Red Sox', '660593');

INSERT INTO Player VALUES ('Eduardo Rodriguez', '57', '1993-04-07T00:00:00', 'P', '', 'Boston Red Sox', '593958');

INSERT INTO Player VALUES ('Chris Sale', '41', '1989-03-30T00:00:00', 'P', 'Florida Gulf Coast', 'Boston Red Sox', '519242');

INSERT INTO Player VALUES ('Robby Scott', '63', '1989-08-29T00:00:00', 'P', 'Florida State', 'Boston Red Sox', '582494');

INSERT INTO Player VALUES ('Chandler Shepherd', '', '1992-08-25T00:00:00', 'P', 'Kentucky', 'Boston Red Sox', '605469');

INSERT INTO Player VALUES ('Blake Swihart', '23', '1992-04-03T00:00:00', 'C', '', 'Boston Red Sox', '596119');

INSERT INTO Player VALUES ('Josh Taylor', '', '1993-03-02T00:00:00', 'P', 'Georgia College & State', 'Boston Red Sox', '657031');

INSERT INTO Player VALUES ('Tyler Thornburg', '47', '1988-09-29T00:00:00', 'P', 'Charleston Southern', 'Boston Red Sox', '592804');

INSERT INTO Player VALUES ('Sam Travis', '59', '1993-08-27T00:00:00', '1B', 'Indiana', 'Boston Red Sox', '607752');

INSERT INTO Player VALUES ('Christian Vazquez', '7', '1990-08-21T00:00:00', 'C', '', 'Boston Red Sox', '543877');

INSERT INTO Player VALUES ('Hector Velazquez', '76', '1988-11-26T00:00:00', 'P', '', 'Boston Red Sox', '584171');

INSERT INTO Player VALUES ('Marcus Walden', '64', '1988-09-13T00:00:00', 'P', 'Fresno CC, CA', 'Boston Red Sox', '519393');

INSERT INTO Player VALUES ('Brandon Workman', '44', '1988-08-13T00:00:00', 'P', 'Texas', 'Boston Red Sox', '519443');

INSERT INTO Player VALUES ('Steven Wright', '35', '1984-08-30T00:00:00', 'P', 'Hawaii', 'Boston Red Sox', '453214');

INSERT INTO Player VALUES ('Pedro Araujo', '38', '1993-07-02T00:00:00', 'P', '', 'Baltimore Orioles', '606478');

INSERT INTO Player VALUES ('Tim Beckham', '1', '1990-01-27T00:00:00', '3B', '', 'Baltimore Orioles', '542921');

INSERT INTO Player VALUES ('Richard Bleier', '48', '1987-04-16T00:00:00', 'P', 'Florida Gulf Coast', 'Baltimore Orioles', '542947');

INSERT INTO Player VALUES ('Dylan Bundy', '37', '1992-11-15T00:00:00', 'P', '', 'Baltimore Orioles', '605164');

INSERT INTO Player VALUES ('Cody Carroll', '49', '1992-10-15T00:00:00', 'P', 'Southern Mississippi', 'Baltimore Orioles', '606944');

INSERT INTO Player VALUES ('Andrew Cashner', '54', '1986-09-11T00:00:00', 'P', 'Texas Christian', 'Baltimore Orioles', '488768');

INSERT INTO Player VALUES ('Miguel Castro', '50', '1994-12-24T00:00:00', 'P', '', 'Baltimore Orioles', '612434');

INSERT INTO Player VALUES ('Alex Cobb', '17', '1987-10-07T00:00:00', 'P', '', 'Baltimore Orioles', '502171');

INSERT INTO Player VALUES ('Chris Davis', '19', '1986-03-17T00:00:00', '1B', 'Navarro College', 'Baltimore Orioles', '448801');

INSERT INTO Player VALUES ('Paul Fry', '51', '1992-07-26T00:00:00', 'P', 'St. Clair County CC', 'Baltimore Orioles', '643316');

INSERT INTO Player VALUES ('Mychal Givens', '60', '1990-05-13T00:00:00', 'P', '', 'Baltimore Orioles', '571710');

INSERT INTO Player VALUES ('Donnie Hart', '57', '1990-09-06T00:00:00', 'P', 'Texas State', 'Baltimore Orioles', '643354');

INSERT INTO Player VALUES ('Hunter Harvey', '', '1994-12-09T00:00:00', 'P', '', 'Baltimore Orioles', '640451');

INSERT INTO Player VALUES ('Austin Hays', '', '1995-07-05T00:00:00', 'RF', 'Jacksonville', 'Baltimore Orioles', '669720');

INSERT INTO Player VALUES ('David Hess', '41', '1993-07-10T00:00:00', 'P', 'Tennessee Tech', 'Baltimore Orioles', '605276');

INSERT INTO Player VALUES ('Caleb Joseph', '36', '1986-06-18T00:00:00', 'C', 'Lipscomb', 'Baltimore Orioles', '543376');

INSERT INTO Player VALUES ('Branden Kline', '', '1991-09-29T00:00:00', 'P', 'Virginia', 'Baltimore Orioles', '571858');

INSERT INTO Player VALUES ('Trey Mancini', '16', '1992-03-18T00:00:00', 'LF', 'Notre Dame', 'Baltimore Orioles', '641820');

INSERT INTO Player VALUES ('John Means', '67', '1993-04-24T00:00:00', 'P', 'West Virginia', 'Baltimore Orioles', '607644');

INSERT INTO Player VALUES ('Ryan Meisinger', '52', '1994-05-04T00:00:00', 'P', 'Radford', 'Baltimore Orioles', '664682');

INSERT INTO Player VALUES ('Cedric Mullins', '3', '1994-10-01T00:00:00', 'CF', 'Campbell', 'Baltimore Orioles', '656775');

INSERT INTO Player VALUES ('Renato Nunez', '39', '1994-04-04T00:00:00', '3B', '', 'Baltimore Orioles', '600524');

INSERT INTO Player VALUES ('Luis Ortiz', '59', '1995-09-22T00:00:00', 'P', '', 'Baltimore Orioles', '656814');

INSERT INTO Player VALUES ('Evan Phillips', '58', '1994-09-11T00:00:00', 'P', 'UNC Wilmington', 'Baltimore Orioles', '623465');

INSERT INTO Player VALUES ('Yefry Ramirez', '32', '1993-11-28T00:00:00', 'P', '', 'Baltimore Orioles', '606162');

INSERT INTO Player VALUES ('Joey Rickard', '23', '1991-05-21T00:00:00', 'CF', 'Arizona', 'Baltimore Orioles', '572073');

INSERT INTO Player VALUES ('Josh Rogers', '65', '1994-07-10T00:00:00', 'P', 'Louisville', 'Baltimore Orioles', '642028');

INSERT INTO Player VALUES ('Anthony Santander', '25', '1994-10-19T00:00:00', 'LF', '', 'Baltimore Orioles', '623993');

INSERT INTO Player VALUES ('Tanner Scott', '66', '1994-07-22T00:00:00', 'P', 'Howard College', 'Baltimore Orioles', '656945');

INSERT INTO Player VALUES ('Chance Sisco', '15', '1995-02-24T00:00:00', 'C', '', 'Baltimore Orioles', '642082');

INSERT INTO Player VALUES ('DJ Stewart', '62', '1993-11-30T00:00:00', 'RF', 'Florida State', 'Baltimore Orioles', '621466');

INSERT INTO Player VALUES ('Andrew Susac', '', '1990-03-22T00:00:00', 'C', 'Oregon State', 'Baltimore Orioles', '572180');

INSERT INTO Player VALUES ('Dillon Tate', '', '1994-05-01T00:00:00', 'P', 'UC Santa Barbara', 'Baltimore Orioles', '622253');

INSERT INTO Player VALUES ('Mark Trumbo', '45', '1986-01-16T00:00:00', 'DH', '', 'Baltimore Orioles', '444432');

INSERT INTO Player VALUES ('Breyvic Valera', '28', '1992-01-08T00:00:00', '2B', '', 'Baltimore Orioles', '591971');

INSERT INTO Player VALUES ('Jonathan Villar', '2', '1991-05-02T00:00:00', '2B', '', 'Baltimore Orioles', '542340');

INSERT INTO Player VALUES ('Steve Wilkerson', '12', '1992-01-11T00:00:00', '2B', 'Clemson', 'Baltimore Orioles', '592859');

INSERT INTO Player VALUES ('Mike Wright Jr.', '43', '1990-01-03T00:00:00', 'P', 'East Carolina', 'Baltimore Orioles', '605541');

INSERT INTO Player VALUES ('Austin Wynns', '61', '1990-12-10T00:00:00', 'C', 'Fresno State', 'Baltimore Orioles', '642851');

INSERT INTO Player VALUES ('Jimmy Yacabonis', '31', '1992-03-21T00:00:00', 'P', 'Saint Joseph's (PA)', 'Baltimore Orioles', '642231');

INSERT INTO Player VALUES ('Nick Ahmed', '13', '1990-03-15T00:00:00', 'SS', 'Connecticut', 'Arizona Diamondbacks', '605113');

INSERT INTO Player VALUES ('Matt Andriese', '35', '1989-08-28T00:00:00', 'P', 'UC Riverside', 'Arizona Diamondbacks', '542882');

INSERT INTO Player VALUES ('Alex Avila', '5', '1987-01-29T00:00:00', 'C', 'Alabama', 'Arizona Diamondbacks', '488671');

INSERT INTO Player VALUES ('Jake Barrett', '33', '1991-07-22T00:00:00', 'P', 'Arizona State', 'Arizona Diamondbacks', '545332');

INSERT INTO Player VALUES ('Brad Boxberger', '31', '1988-05-27T00:00:00', 'P', 'Southern California', 'Arizona Diamondbacks', '502202');

INSERT INTO Player VALUES ('Silvino Bracho', '61', '1992-07-17T00:00:00', 'P', '', 'Arizona Diamondbacks', '611093');

INSERT INTO Player VALUES ('Archie Bradley', '25', '1992-08-10T00:00:00', 'P', '', 'Arizona Diamondbacks', '605151');

INSERT INTO Player VALUES ('Socrates Brito', '19', '1992-09-06T00:00:00', 'RF', '', 'Arizona Diamondbacks', '593647');

INSERT INTO Player VALUES ('Andrew Chafin', '40', '1990-06-17T00:00:00', 'P', 'Kent State', 'Arizona Diamondbacks', '605177');

INSERT INTO Player VALUES ('Taylor Clarke', '', '1993-05-13T00:00:00', 'P', 'College of Charleston', 'Arizona Diamondbacks', '664199');

INSERT INTO Player VALUES ('Kevin Cron', '', '1993-02-17T00:00:00', '3B', 'Texas Christian', 'Arizona Diamondbacks', '605196');

INSERT INTO Player VALUES ('Jarrod Dyson', '1', '1984-08-15T00:00:00', 'CF', 'Southwest Mississippi CC', 'Arizona Diamondbacks', '502481');

INSERT INTO Player VALUES ('Eduardo Escobar', '14', '1989-01-05T00:00:00', '3B', '', 'Arizona Diamondbacks', '500871');

INSERT INTO Player VALUES ('Zack Godley', '52', '1990-04-21T00:00:00', 'P', 'Tennessee', 'Arizona Diamondbacks', '643327');

INSERT INTO Player VALUES ('Paul Goldschmidt', '44', '1987-09-10T00:00:00', '1B', 'Texas State', 'Arizona Diamondbacks', '502671');

INSERT INTO Player VALUES ('Zack Greinke', '21', '1983-10-21T00:00:00', 'P', '', 'Arizona Diamondbacks', '425844');

INSERT INTO Player VALUES ('Yoshihisa Hirano', '66', '1984-03-08T00:00:00', 'P', '', 'Arizona Diamondbacks', '673633');

INSERT INTO Player VALUES ('Matt Koch', '55', '1990-11-02T00:00:00', 'P', 'Louisville', 'Arizona Diamondbacks', '571863');

INSERT INTO Player VALUES ('Joey Krehbiel', '', '1992-12-20T00:00:00', 'P', '', 'Arizona Diamondbacks', '607216');

INSERT INTO Player VALUES ('Jake Lamb', '22', '1990-10-09T00:00:00', '3B', 'Washington', 'Arizona Diamondbacks', '571875');

INSERT INTO Player VALUES ('Domingo Leyba', '', '1995-09-11T00:00:00', '2B', '', 'Arizona Diamondbacks', '642736');

INSERT INTO Player VALUES ('Yoan Lopez', '50', '1993-01-02T00:00:00', 'P', '', 'Arizona Diamondbacks', '661255');

INSERT INTO Player VALUES ('Ketel Marte', '4', '1993-10-12T00:00:00', '2B', '', 'Arizona Diamondbacks', '606466');

INSERT INTO Player VALUES ('T.J. McFarland', '30', '1989-06-08T00:00:00', 'P', '', 'Arizona Diamondbacks', '519008');

INSERT INTO Player VALUES ('Jared Miller', '', '1993-08-21T00:00:00', 'P', 'Vanderbilt', 'Arizona Diamondbacks', '656744');

INSERT INTO Player VALUES ('Shelby Miller', '26', '1990-10-10T00:00:00', 'P', '', 'Arizona Diamondbacks', '571946');

INSERT INTO Player VALUES ('John Ryan Murphy', '36', '1991-05-13T00:00:00', 'C', '', 'Arizona Diamondbacks', '571974');

INSERT INTO Player VALUES ('Chris Owings', '16', '1991-08-12T00:00:00', '2B', '', 'Arizona Diamondbacks', '572008');

INSERT INTO Player VALUES ('Joel Payamps', '', '1994-04-07T00:00:00', 'P', '', 'Arizona Diamondbacks', '606303');

INSERT INTO Player VALUES ('David Peralta', '6', '1987-08-14T00:00:00', 'LF', '', 'Arizona Diamondbacks', '444482');

INSERT INTO Player VALUES ('Robbie Ray', '38', '1991-10-01T00:00:00', 'P', '', 'Arizona Diamondbacks', '592662');

INSERT INTO Player VALUES ('Jimmie Sherfy', '54', '1991-12-27T00:00:00', 'P', 'Oregon', 'Arizona Diamondbacks', '642073');

INSERT INTO Player VALUES ('Steven Souza Jr.', '24', '1989-04-24T00:00:00', 'RF', '', 'Arizona Diamondbacks', '519306');

INSERT INTO Player VALUES ('Bo Takahashi', '', '1997-01-23T00:00:00', 'P', '', 'Arizona Diamondbacks', '649963');

INSERT INTO Player VALUES ('Emilio Vargas', '', '1996-08-12T00:00:00', 'P', '', 'Arizona Diamondbacks', '642496');

INSERT INTO Player VALUES ('Ildemaro Vargas', '15', '1991-07-16T00:00:00', 'SS', '', 'Arizona Diamondbacks', '545121');

INSERT INTO Player VALUES ('Christian Walker', '53', '1991-03-28T00:00:00', '1B', 'South Carolina', 'Arizona Diamondbacks', '572233');

INSERT INTO Player VALUES ('Taijuan Walker', '99', '1992-08-13T00:00:00', 'P', '', 'Arizona Diamondbacks', '592836');

INSERT INTO Player VALUES ('Dario Agrazal', '', '1994-12-28T00:00:00', 'P', '', 'Pittsburgh Pirates', '642607');

INSERT INTO Player VALUES ('Chris Archer', '24', '1988-09-26T00:00:00', 'P', '', 'Pittsburgh Pirates', '502042');

INSERT INTO Player VALUES ('Josh Bell', '55', '1992-08-14T00:00:00', '1B', '', 'Pittsburgh Pirates', '605137');

INSERT INTO Player VALUES ('Steven Brault', '43', '1992-04-29T00:00:00', 'P', 'Regis University', 'Pittsburgh Pirates', '643230');

INSERT INTO Player VALUES ('J.T. Brubaker', '', '1993-11-17T00:00:00', 'P', 'Akron', 'Pittsburgh Pirates', '664141');

INSERT INTO Player VALUES ('Nick Burdi', '57', '1993-01-19T00:00:00', 'P', 'Louisville', 'Pittsburgh Pirates', '595897');

INSERT INTO Player VALUES ('Francisco Cervelli', '29', '1986-03-06T00:00:00', 'C', '', 'Pittsburgh Pirates', '465041');

INSERT INTO Player VALUES ('Lonnie Chisenhall', '', '1988-10-04T00:00:00', 'OF', 'Pitt CC, NC', 'Pittsburgh Pirates', '502082');

INSERT INTO Player VALUES ('Kyle Crick', '30', '1992-11-30T00:00:00', 'P', '', 'Pittsburgh Pirates', '605195');

INSERT INTO Player VALUES ('Elias Diaz', '32', '1990-11-17T00:00:00', 'C', '', 'Pittsburgh Pirates', '553869');

INSERT INTO Player VALUES ('Corey Dickerson', '12', '1989-05-22T00:00:00', 'LF', 'Meridian CC, MS', 'Pittsburgh Pirates', '572816');

INSERT INTO Player VALUES ('Luis Escobar', '77', '1996-05-30T00:00:00', 'P', '', 'Pittsburgh Pirates', '650813');

INSERT INTO Player VALUES ('Michael Feliz', '45', '1993-06-28T00:00:00', 'P', '', 'Pittsburgh Pirates', '593140');

INSERT INTO Player VALUES ('Adam Frazier', '26', '1991-12-14T00:00:00', '2B', 'Mississippi State', 'Pittsburgh Pirates', '624428');

INSERT INTO Player VALUES ('Erik Gonzalez', '', '1991-08-31T00:00:00', '2B', '', 'Pittsburgh Pirates', '570481');

INSERT INTO Player VALUES ('Clay Holmes', '68', '1993-03-27T00:00:00', 'P', '', 'Pittsburgh Pirates', '605280');

INSERT INTO Player VALUES ('Jung Ho Kang', '16', '1987-04-05T00:00:00', '3B', '', 'Pittsburgh Pirates', '628356');

INSERT INTO Player VALUES ('Keone Kela', '35', '1993-04-16T00:00:00', 'P', 'Everett CC, WA', 'Pittsburgh Pirates', '605309');

INSERT INTO Player VALUES ('Mitch Keller', '', '1996-04-04T00:00:00', 'P', '', 'Pittsburgh Pirates', '656605');

INSERT INTO Player VALUES ('Nick Kingham', '49', '1991-11-08T00:00:00', 'P', '', 'Pittsburgh Pirates', '592468');

INSERT INTO Player VALUES ('Kevin Kramer', '44', '1993-10-03T00:00:00', '2B', 'UCLA', 'Pittsburgh Pirates', '596012');

INSERT INTO Player VALUES ('Chad Kuhl', '39', '1992-09-10T00:00:00', 'P', 'Delaware', 'Pittsburgh Pirates', '641771');

INSERT INTO Player VALUES ('Jesus Liranzo', '', '1995-03-07T00:00:00', 'P', '', 'Pittsburgh Pirates', '622338');

INSERT INTO Player VALUES ('Starling Marte', '6', '1988-10-09T00:00:00', 'CF', '', 'Pittsburgh Pirates', '516782');

INSERT INTO Player VALUES ('Jason Martin', '', '1995-09-05T00:00:00', 'CF', '', 'Pittsburgh Pirates', '641829');

INSERT INTO Player VALUES ('Colin Moran', '19', '1992-10-01T00:00:00', '3B', 'North Carolina', 'Pittsburgh Pirates', '592567');

INSERT INTO Player VALUES ('Joe Musgrove', '59', '1992-12-04T00:00:00', 'P', '', 'Pittsburgh Pirates', '605397');

INSERT INTO Player VALUES ('Dovydas Neverauskas', '66', '1993-01-14T00:00:00', 'P', '', 'Pittsburgh Pirates', '596720');

INSERT INTO Player VALUES ('Kevin Newman', '27', '1993-08-04T00:00:00', '2B', 'Arizona', 'Pittsburgh Pirates', '621028');

INSERT INTO Player VALUES ('Ivan Nova', '46', '1987-01-12T00:00:00', 'P', '', 'Pittsburgh Pirates', '467100');

INSERT INTO Player VALUES ('Jose Osuna', '36', '1992-12-12T00:00:00', '3B', '', 'Pittsburgh Pirates', '591741');

INSERT INTO Player VALUES ('Gregory Polanco', '25', '1991-09-14T00:00:00', 'RF', '', 'Pittsburgh Pirates', '570256');

INSERT INTO Player VALUES ('Pablo Reyes', '15', '1993-09-05T00:00:00', 'LF', '', 'Pittsburgh Pirates', '622569');

INSERT INTO Player VALUES ('Richard Rodriguez', '48', '1990-03-04T00:00:00', 'P', '', 'Pittsburgh Pirates', '593144');

INSERT INTO Player VALUES ('Edgar Santana', '37', '1991-10-16T00:00:00', 'P', '', 'Pittsburgh Pirates', '650828');

INSERT INTO Player VALUES ('Jacob Stallings', '58', '1989-12-22T00:00:00', 'C', 'North Carolina', 'Pittsburgh Pirates', '607732');

INSERT INTO Player VALUES ('Jameson Taillon', '50', '1991-11-18T00:00:00', 'P', '', 'Pittsburgh Pirates', '592791');

INSERT INTO Player VALUES ('Cole Tucker', '', '1996-07-03T00:00:00', 'SS', '', 'Pittsburgh Pirates', '657061');

INSERT INTO Player VALUES ('Felipe Vazquez', '73', '1991-07-05T00:00:00', 'P', '', 'Pittsburgh Pirates', '553878');

INSERT INTO Player VALUES ('Trevor Williams', '34', '1992-04-25T00:00:00', 'P', 'Arizona State', 'Pittsburgh Pirates', '592866');
INSERT INTO Player VALUES ('Austin Allen', '', '1994-01-16T00:00:00', 'C', 'Florida Tech', 'San Diego Padres', '664119');

INSERT INTO Player VALUES ('Carlos Asuaje', '20', '1991-11-02T00:00:00', '2B', 'Nova Southeastern', 'San Diego Padres', '641319');

INSERT INTO Player VALUES ('Pedro Avila', '', '1997-01-14T00:00:00', 'P', '', 'San Diego Padres', '658648');

INSERT INTO Player VALUES ('Jose Castillo', '65', '1996-01-10T00:00:00', 'P', '', 'San Diego Padres', '620454');

INSERT INTO Player VALUES ('Franchy Cordero', '33', '1994-09-02T00:00:00', 'LF', '', 'San Diego Padres', '614173');

INSERT INTO Player VALUES ('Miguel Diaz', '43', '1994-11-28T00:00:00', 'P', '', 'San Diego Padres', '622766');

INSERT INTO Player VALUES ('Robbie Erlin', '41', '1990-10-08T00:00:00', 'P', '', 'San Diego Padres', '572362');

INSERT INTO Player VALUES ('Anderson Espinoza', '', '1998-03-09T00:00:00', 'P', '', 'San Diego Padres', '659262');

INSERT INTO Player VALUES ('Ty France', '', '1994-07-13T00:00:00', '3B', 'San Diego State', 'San Diego Padres', '664034');

INSERT INTO Player VALUES ('Greg Garcia', '', '1989-08-08T00:00:00', 'SS', 'Hawaii', 'San Diego Padres', '594824');

INSERT INTO Player VALUES ('Javy Guerra', '8', '1995-09-25T00:00:00', 'SS', '', 'San Diego Padres', '642770');

INSERT INTO Player VALUES ('Austin Hedges', '18', '1992-08-18T00:00:00', 'C', '', 'San Diego Padres', '595978');

INSERT INTO Player VALUES ('Eric Hosmer', '30', '1989-10-24T00:00:00', '1B', '', 'San Diego Padres', '543333');

INSERT INTO Player VALUES ('Travis Jankowski', '16', '1991-06-15T00:00:00', 'RF', 'SUNY Stony Brook', 'San Diego Padres', '608671');

INSERT INTO Player VALUES ('Brett Kennedy', '60', '1994-08-04T00:00:00', 'P', 'Fordham', 'San Diego Padres', '664028');

INSERT INTO Player VALUES ('Dinelson Lamet', '64', '1992-07-18T00:00:00', 'P', '', 'San Diego Padres', '659275');

INSERT INTO Player VALUES ('Eric Lauer', '46', '1995-06-03T00:00:00', 'P', 'Kent state', 'San Diego Padres', '641778');

INSERT INTO Player VALUES ('Joey Lucchesi', '37', '1993-06-06T00:00:00', 'P', 'Southeast Missouri State', 'San Diego Padres', '664192');

INSERT INTO Player VALUES ('Manuel Margot', '7', '1994-09-28T00:00:00', 'CF', '', 'San Diego Padres', '622534');

INSERT INTO Player VALUES ('Phil Maton', '88', '1993-03-25T00:00:00', 'P', 'Louisiana Tech', 'San Diego Padres', '664208');

INSERT INTO Player VALUES ('Francisco Mejia', '27', '1995-10-27T00:00:00', 'C', '', 'San Diego Padres', '642336');

INSERT INTO Player VALUES ('Bryan Mitchell', '50', '1991-04-19T00:00:00', 'P', '', 'San Diego Padres', '571951');

INSERT INTO Player VALUES ('Wil Myers', '4', '1990-12-10T00:00:00', 'LF', '', 'San Diego Padres', '571976');

INSERT INTO Player VALUES ('Jacob Nix', '63', '1996-01-09T00:00:00', 'P', '', 'San Diego Padres', '656798');

INSERT INTO Player VALUES ('Edward Olivares', '', '1996-03-06T00:00:00', 'CF', '', 'San Diego Padres', '658668');

INSERT INTO Player VALUES ('Chris Paddack', '', '1996-01-08T00:00:00', 'P', '', 'San Diego Padres', '663978');

INSERT INTO Player VALUES ('Luis Perdomo', '61', '1993-05-09T00:00:00', 'P', '', 'San Diego Padres', '606131');

INSERT INTO Player VALUES ('Jose Pirela', '2', '1989-11-21T00:00:00', '2B', '', 'San Diego Padres', '517369');

INSERT INTO Player VALUES ('Hunter Renfroe', '10', '1992-01-28T00:00:00', 'RF', 'Mississippi State', 'San Diego Padres', '592669');

INSERT INTO Player VALUES ('Franmil Reyes', '32', '1995-07-07T00:00:00', 'RF', '', 'San Diego Padres', '614177');

INSERT INTO Player VALUES ('Gerardo Reyes', '', '1993-05-13T00:00:00', 'P', 'Galveston College', 'San Diego Padres', '622103');

INSERT INTO Player VALUES ('Clayton Richard', '3', '1983-09-12T00:00:00', 'P', 'Michigan', 'San Diego Padres', '453385');

INSERT INTO Player VALUES ('Craig Stammen', '34', '1984-03-09T00:00:00', 'P', 'Dayton', 'San Diego Padres', '489334');

INSERT INTO Player VALUES ('Robert Stock', '66', '1989-11-21T00:00:00', 'P', 'Southern California', 'San Diego Padres', '476594');

INSERT INTO Player VALUES ('Matt Strahm', '55', '1991-11-12T00:00:00', 'P', 'Neosho CC', 'San Diego Padres', '621381');

INSERT INTO Player VALUES ('Luis Torrens', '', '1996-05-02T00:00:00', 'C', '', 'San Diego Padres', '620443');

INSERT INTO Player VALUES ('Luis Urias', '9', '1997-06-03T00:00:00', '2B', '', 'San Diego Padres', '649966');

INSERT INTO Player VALUES ('Brad Wieck', '57', '1991-10-14T00:00:00', 'P', 'Oklahoma City', 'San Diego Padres', '623364');

INSERT INTO Player VALUES ('Trey Wingenter', '58', '1994-04-15T00:00:00', 'P', 'Auburn', 'San Diego Padres', '622259');

INSERT INTO Player VALUES ('Kirby Yates', '39', '1987-03-25T00:00:00', 'P', 'Yavapai College', 'San Diego Padres', '489446');
INSERT INTO Player VALUES ('Ruben Alaniz', '', '1991-06-14T00:00:00', 'P', '', 'Seattle Mariners', '595798');

INSERT INTO Player VALUES ('Dan Altavilla', '53', '1992-09-08T00:00:00', 'P', 'Mercyhurst', 'Seattle Mariners', '656186');

INSERT INTO Player VALUES ('John Andreoli', '', '1990-06-09T00:00:00', 'RF', 'Connecticut', 'Seattle Mariners', '607430');

INSERT INTO Player VALUES ('Shawn Armstrong', '37', '1990-09-11T00:00:00', 'P', 'East Carolina', 'Seattle Mariners', '542888');

INSERT INTO Player VALUES ('Braden Bishop', '', '1993-08-22T00:00:00', 'CF', 'Washington', 'Seattle Mariners', '623323');

INSERT INTO Player VALUES ('Chasen Bradford', '60', '1989-08-05T00:00:00', 'P', 'Central Florida', 'Seattle Mariners', '607473');

INSERT INTO Player VALUES ('Robinson Cano', '22', '1982-10-22T00:00:00', '2B', '', 'Seattle Mariners', '429664');

INSERT INTO Player VALUES ('Alex Colome', '48', '1988-12-31T00:00:00', 'P', '', 'Seattle Mariners', '517008');

INSERT INTO Player VALUES ('Joey Curletta', '', '1994-03-08T00:00:00', '1B', '', 'Seattle Mariners', '621575');

INSERT INTO Player VALUES ('Edwin Diaz', '39', '1994-03-22T00:00:00', 'P', '', 'Seattle Mariners', '621242');

INSERT INTO Player VALUES ('Roenis Elias', '55', '1988-08-01T00:00:00', 'P', '', 'Seattle Mariners', '606273');

INSERT INTO Player VALUES ('Matt Festa', '67', '1993-03-11T00:00:00', 'P', 'East Stroudsburg, PA', 'Seattle Mariners', '670036');

INSERT INTO Player VALUES ('David Freitas', '36', '1989-03-18T00:00:00', 'C', 'Hawaii', 'Seattle Mariners', '571679');

INSERT INTO Player VALUES ('Ben Gamel', '16', '1992-05-17T00:00:00', 'LF', '', 'Seattle Mariners', '592325');

INSERT INTO Player VALUES ('Marco Gonzales', '32', '1992-02-16T00:00:00', 'P', 'Gonzaga', 'Seattle Mariners', '594835');

INSERT INTO Player VALUES ('Dee Gordon', '9', '1988-04-22T00:00:00', '2B', 'Southeastern, FL', 'Seattle Mariners', '543829');

INSERT INTO Player VALUES ('Mitch Haniger', '17', '1990-12-23T00:00:00', 'RF', 'Cal Poly San Luis Obispo', 'Seattle Mariners', '571745');

INSERT INTO Player VALUES ('Ryon Healy', '27', '1992-01-10T00:00:00', '1B', 'Oregon', 'Seattle Mariners', '592387');

INSERT INTO Player VALUES ('Felix Hernandez', '34', '1986-04-08T00:00:00', 'P', '', 'Seattle Mariners', '433587');

INSERT INTO Player VALUES ('Casey Lawrence', '61', '1987-10-28T00:00:00', 'P', 'Albright College', 'Seattle Mariners', '596271');

INSERT INTO Player VALUES ('Mike Leake', '8', '1987-11-12T00:00:00', 'P', 'Arizona State', 'Seattle Mariners', '502190');

INSERT INTO Player VALUES ('Wade LeBlanc', '49', '1984-08-07T00:00:00', 'P', 'Alabama', 'Seattle Mariners', '453281');

INSERT INTO Player VALUES ('Dylan Moore', '', '1992-08-02T00:00:00', '3B', 'Central Florida', 'Seattle Mariners', '664238');

INSERT INTO Player VALUES ('Kristopher Negron', '45', '1986-02-01T00:00:00', '2B', 'Cosumnes River JC, CA', 'Seattle Mariners', '502117');

INSERT INTO Player VALUES ('Juan Nicasio', '12', '1986-08-31T00:00:00', 'P', '', 'Seattle Mariners', '504379');

INSERT INTO Player VALUES ('James Pazos', '47', '1991-05-05T00:00:00', 'P', 'San Diego', 'Seattle Mariners', '572021');

INSERT INTO Player VALUES ('Max Povse', '44', '1993-08-23T00:00:00', 'P', 'UNC Greensboro', 'Seattle Mariners', '605428');

INSERT INTO Player VALUES ('Nick Rumbelow', '52', '1991-09-06T00:00:00', 'P', 'Louisiana State', 'Seattle Mariners', '592705');

INSERT INTO Player VALUES ('Ricardo Sanchez', '', '1997-04-11T00:00:00', 'P', '', 'Seattle Mariners', '645307');

INSERT INTO Player VALUES ('Kyle Seager', '15', '1987-11-03T00:00:00', '3B', 'North Carolina', 'Seattle Mariners', '572122');

INSERT INTO Player VALUES ('Jean Segura', '2', '1990-03-17T00:00:00', 'SS', '', 'Seattle Mariners', '516416');

INSERT INTO Player VALUES ('Justus Sheffield', '', '1996-05-13T00:00:00', 'P', '', 'Seattle Mariners', '656954');

INSERT INTO Player VALUES ('Mallex Smith', '0', '1993-05-06T00:00:00', 'CF', 'Santa Fe College (FL)', 'Seattle Mariners', '605480');

INSERT INTO Player VALUES ('Erik Swanson', '', '1993-09-04T00:00:00', 'P', 'Iowa Western CC', 'Seattle Mariners', '657024');

INSERT INTO Player VALUES ('Sam Tuivailala', '62', '1992-10-19T00:00:00', 'P', '', 'Seattle Mariners', '592815');

INSERT INTO Player VALUES ('Daniel Vogelbach', '20', '1992-12-17T00:00:00', '1B', '', 'Seattle Mariners', '596129');

INSERT INTO Player VALUES ('Melvin Adon', '', '1994-06-09T00:00:00', 'P', '', 'San Francisco Giants', '661536');

INSERT INTO Player VALUES ('Abiatal Avelino', '46', '1995-02-14T00:00:00', 'SS', '', 'San Francisco Giants', '623214');

INSERT INTO Player VALUES ('Tyler Beede', '38', '1993-05-23T00:00:00', 'P', 'Vanderbilt', 'San Francisco Giants', '595881');

INSERT INTO Player VALUES ('Brandon Belt', '9', '1988-04-20T00:00:00', '1B', 'Texas', 'San Francisco Giants', '474832');

INSERT INTO Player VALUES ('Ty Blach', '50', '1990-10-20T00:00:00', 'P', 'Creighton', 'San Francisco Giants', '621389');

INSERT INTO Player VALUES ('Ray Black', '62', '1990-06-26T00:00:00', 'P', 'Pittsburgh', 'San Francisco Giants', '605143');

INSERT INTO Player VALUES ('Madison Bumgarner', '40', '1989-08-01T00:00:00', 'P', '', 'San Francisco Giants', '518516');

INSERT INTO Player VALUES ('Sam Coonrod', '', '1992-09-22T00:00:00', 'P', 'Southern Illinois', 'San Francisco Giants', '656322');

INSERT INTO Player VALUES ('Brandon Crawford', '35', '1987-01-21T00:00:00', 'SS', 'UCLA', 'San Francisco Giants', '543063');

INSERT INTO Player VALUES ('Johnny Cueto', '47', '1986-02-15T00:00:00', 'P', '', 'San Francisco Giants', '456501');

INSERT INTO Player VALUES ('Steven Duggar', '6', '1993-11-04T00:00:00', 'CF', 'Clemson', 'San Francisco Giants', '621453');

INSERT INTO Player VALUES ('Sam Dyson', '49', '1988-05-07T00:00:00', 'P', 'South Carolina', 'San Francisco Giants', '473879');

INSERT INTO Player VALUES ('Aramis Garcia', '16', '1993-01-12T00:00:00', 'C', 'Florida International', 'San Francisco Giants', '605244');

INSERT INTO Player VALUES ('Alen Hanson', '19', '1992-10-22T00:00:00', '2B', '', 'San Francisco Giants', '593700');

INSERT INTO Player VALUES ('Gorkys Hernandez', '7', '1987-09-07T00:00:00', 'CF', '', 'San Francisco Giants', '491676');

INSERT INTO Player VALUES ('Chase Johnson', '86', '1992-01-09T00:00:00', 'P', 'Cal Poly San Luis Obispo', 'San Francisco Giants', '592438');

INSERT INTO Player VALUES ('Ryder Jones', '14', '1994-06-07T00:00:00', '3B', '', 'San Francisco Giants', '624507');

INSERT INTO Player VALUES ('Derek Law', '64', '1990-09-14T00:00:00', 'P', 'Miami Dade CC', 'San Francisco Giants', '571882');

INSERT INTO Player VALUES ('Evan Longoria', '10', '1985-10-07T00:00:00', '3B', 'Long Beach State', 'San Francisco Giants', '446334');

INSERT INTO Player VALUES ('Mark Melancon', '41', '1985-03-28T00:00:00', 'P', 'Arizona', 'San Francisco Giants', '453343');

INSERT INTO Player VALUES ('Reyes Moronta', '54', '1993-01-06T00:00:00', 'P', '', 'San Francisco Giants', '606625');

INSERT INTO Player VALUES ('Steven Okert', '32', '1991-07-09T00:00:00', 'P', 'Oklahoma', 'San Francisco Giants', '595345');

INSERT INTO Player VALUES ('Josh Osich', '61', '1988-09-03T00:00:00', 'P', 'Oregon State', 'San Francisco Giants', '592612');

INSERT INTO Player VALUES ('Joe Panik', '12', '1990-10-30T00:00:00', '2B', 'St. John's (NY)', 'San Francisco Giants', '605412');

INSERT INTO Player VALUES ('Buster Posey', '28', '1987-03-27T00:00:00', 'C', 'Florida State', 'San Francisco Giants', '457763');

INSERT INTO Player VALUES ('Dereck Rodriguez', '57', '1992-06-05T00:00:00', 'P', '', 'San Francisco Giants', '605446');

INSERT INTO Player VALUES ('Jeff Samardzija', '29', '1985-01-23T00:00:00', 'P', 'Notre Dame', 'San Francisco Giants', '502188');

INSERT INTO Player VALUES ('Pablo Sandoval', '48', '1986-08-11T00:00:00', '3B', '', 'San Francisco Giants', '467055');

INSERT INTO Player VALUES ('Chris Shaw', '26', '1993-10-20T00:00:00', 'LF', 'Boston College', 'San Francisco Giants', '622046');

INSERT INTO Player VALUES ('Austin Slater', '53', '1992-12-13T00:00:00', 'LF', 'Stanford', 'San Francisco Giants', '596103');

INSERT INTO Player VALUES ('Will Smith', '13', '1989-07-10T00:00:00', 'P', 'Gulf Coast CC', 'San Francisco Giants', '519293');

INSERT INTO Player VALUES ('Chris Stratton', '34', '1990-08-22T00:00:00', 'P', 'Mississippi State', 'San Francisco Giants', '608717');

INSERT INTO Player VALUES ('Hunter Strickland', '60', '1988-09-24T00:00:00', 'P', '', 'San Francisco Giants', '519326');

INSERT INTO Player VALUES ('Andrew Suarez', '59', '1992-09-11T00:00:00', 'P', 'Miami (FL)', 'San Francisco Giants', '605498');

INSERT INTO Player VALUES ('Tony Watson', '56', '1985-05-30T00:00:00', 'P', 'Nebraska', 'San Francisco Giants', '453265');

INSERT INTO Player VALUES ('Logan Webb', '', '1996-11-18T00:00:00', 'P', '', 'San Francisco Giants', '657277');

INSERT INTO Player VALUES ('Mac Williamson', '', '1990-07-15T00:00:00', 'RF', 'Wake Forest', 'San Francisco Giants', '607776');

INSERT INTO Player VALUES ('Harrison Bader', '48', '1994-06-03T00:00:00', 'RF', 'Florida', 'St. Louis Cardinals', '664056');

INSERT INTO Player VALUES ('John Brebbia', '60', '1990-05-30T00:00:00', 'P', 'Elon', 'St. Louis Cardinals', '605154');

INSERT INTO Player VALUES ('Genesis Cabrera', '', '1996-10-10T00:00:00', 'P', '', 'St. Louis Cardinals', '650893');

INSERT INTO Player VALUES ('Matt Carpenter', '13', '1985-11-26T00:00:00', '3B', 'Texas Christian', 'St. Louis Cardinals', '572761');

INSERT INTO Player VALUES ('Brett Cecil', '27', '1986-07-02T00:00:00', 'P', 'Maryland', 'St. Louis Cardinals', '446399');

INSERT INTO Player VALUES ('Paul DeJong', '12', '1993-08-02T00:00:00', 'SS', 'Illinois State', 'St. Louis Cardinals', '657557');

INSERT INTO Player VALUES ('Jack Flaherty', '32', '1995-10-15T00:00:00', 'P', '', 'St. Louis Cardinals', '656427');

INSERT INTO Player VALUES ('Dexter Fowler', '25', '1986-03-22T00:00:00', 'RF', '', 'St. Louis Cardinals', '451594');

INSERT INTO Player VALUES ('Giovanny Gallegos', '65', '1991-08-14T00:00:00', 'P', '', 'St. Louis Cardinals', '606149');

INSERT INTO Player VALUES ('John Gant', '53', '1992-08-06T00:00:00', 'P', '', 'St. Louis Cardinals', '607231');

INSERT INTO Player VALUES ('Adolis Garcia', '28', '1993-03-02T00:00:00', 'RF', '', 'St. Louis Cardinals', '666969');

INSERT INTO Player VALUES ('Austin Gomber', '68', '1993-11-23T00:00:00', 'P', 'Florida Atlantic', 'St. Louis Cardinals', '596295');

INSERT INTO Player VALUES ('Luke Gregerson', '44', '1984-05-14T00:00:00', 'P', 'Saint Xavier, IL', 'St. Louis Cardinals', '502381');

INSERT INTO Player VALUES ('Jedd Gyorko', '3', '1988-09-23T00:00:00', '3B', 'West Virginia', 'St. Louis Cardinals', '576397');

INSERT INTO Player VALUES ('Ryan Helsley', '', '1994-07-18T00:00:00', 'P', 'Northeastern State', 'St. Louis Cardinals', '664854');

INSERT INTO Player VALUES ('Jordan Hicks', '49', '1996-09-06T00:00:00', 'P', '', 'St. Louis Cardinals', '663855');

INSERT INTO Player VALUES ('Dakota Hudson', '43', '1994-09-15T00:00:00', 'P', 'Mississippi State', 'St. Louis Cardinals', '641712');

INSERT INTO Player VALUES ('Carson Kelly', '19', '1994-07-14T00:00:00', 'C', '', 'St. Louis Cardinals', '608348');

INSERT INTO Player VALUES ('Dominic Leone', '55', '1991-10-26T00:00:00', 'P', 'Clemson', 'St. Louis Cardinals', '608678');

INSERT INTO Player VALUES ('Carlos Martinez', '18', '1991-09-21T00:00:00', 'P', '', 'St. Louis Cardinals', '593372');

INSERT INTO Player VALUES ('Jose Martinez', '38', '1988-07-25T00:00:00', '1B', '', 'St. Louis Cardinals', '500874');

INSERT INTO Player VALUES ('Mike Mayers', '59', '1991-12-06T00:00:00', 'P', 'Mississippi', 'St. Louis Cardinals', '594577');

INSERT INTO Player VALUES ('Miles Mikolas', '39', '1988-08-23T00:00:00', 'P', 'Nova Southeastern', 'St. Louis Cardinals', '571945');

INSERT INTO Player VALUES ('Yadier Molina', '4', '1982-07-13T00:00:00', 'C', '', 'St. Louis Cardinals', '425877');

INSERT INTO Player VALUES ('Yairo Munoz', '34', '1995-01-23T00:00:00', 'SS', '', 'St. Louis Cardinals', '622168');

INSERT INTO Player VALUES ('Tyler O'Neill', '41', '1995-06-22T00:00:00', 'LF', '', 'St. Louis Cardinals', '641933');

INSERT INTO Player VALUES ('Marcell Ozuna', '23', '1990-11-12T00:00:00', 'LF', '', 'St. Louis Cardinals', '542303');

INSERT INTO Player VALUES ('Daniel Poncedeleon', '62', '1992-01-16T00:00:00', 'P', 'Embry-Riddle, FL', 'St. Louis Cardinals', '594965');

INSERT INTO Player VALUES ('Alex Reyes', '29', '1994-08-29T00:00:00', 'P', '', 'St. Louis Cardinals', '621052');

INSERT INTO Player VALUES ('Chasen Shreve', '40', '1990-07-12T00:00:00', 'P', 'CC of Southern Nevada', 'St. Louis Cardinals', '592741');

INSERT INTO Player VALUES ('Edmundo Sosa', '63', '1996-03-06T00:00:00', 'SS', '', 'St. Louis Cardinals', '624641');

INSERT INTO Player VALUES ('Lane Thomas', '', '1995-08-23T00:00:00', 'CF', '', 'St. Louis Cardinals', '657041');

INSERT INTO Player VALUES ('Ramon Urias', '', '1994-06-03T00:00:00', '2B', '', 'St. Louis Cardinals', '602104');

INSERT INTO Player VALUES ('Michael Wacha', '52', '1991-07-01T00:00:00', 'P', 'Texas A&M', 'St. Louis Cardinals', '608379');

INSERT INTO Player VALUES ('Adam Wainwright', '50', '1981-08-30T00:00:00', 'P', '', 'St. Louis Cardinals', '425794');

INSERT INTO Player VALUES ('Luke Weaver', '7', '1993-08-21T00:00:00', 'P', 'Florida State', 'St. Louis Cardinals', '596133');

INSERT INTO Player VALUES ('Tyler Webb', '30', '1990-07-20T00:00:00', 'P', 'South Carolina', 'St. Louis Cardinals', '643778');

INSERT INTO Player VALUES ('Justin Williams', '', '1995-08-20T00:00:00', 'LF', '', 'St. Louis Cardinals', '642211');

INSERT INTO Player VALUES ('Patrick Wisdom', '21', '1991-08-27T00:00:00', '3B', 'Saint Mary's (CA)', 'St. Louis Cardinals', '621550');

INSERT INTO Player VALUES ('Kolten Wong', '16', '1990-10-10T00:00:00', '2B', 'Hawaii', 'St. Louis Cardinals', '543939');

INSERT INTO Player VALUES ('Willy Adames', '1', '1995-09-02T00:00:00', 'SS', '', 'Tampa Bay Rays', '642715');

INSERT INTO Player VALUES ('Jose Alvarado', '46', '1995-05-21T00:00:00', 'P', '', 'Tampa Bay Rays', '621237');

INSERT INTO Player VALUES ('Christian Arroyo', '21', '1995-05-30T00:00:00', '3B', '', 'Tampa Bay Rays', '624414');

INSERT INTO Player VALUES ('Anthony Banda', '', '1993-08-10T00:00:00', 'P', 'San Jacinto College', 'Tampa Bay Rays', '607455');

INSERT INTO Player VALUES ('Jake Bauers', '9', '1995-10-06T00:00:00', '1B', '', 'Tampa Bay Rays', '641343');

INSERT INTO Player VALUES ('Jalen Beeks', '68', '1993-07-10T00:00:00', 'P', 'Arkansas', 'Tampa Bay Rays', '656222');

INSERT INTO Player VALUES ('Kyle Bird', '', '1993-04-12T00:00:00', 'P', 'Flagler College', 'Tampa Bay Rays', '613317');

INSERT INTO Player VALUES ('Brock Burke', '', '1996-08-04T00:00:00', 'P', '', 'Tampa Bay Rays', '656271');

INSERT INTO Player VALUES ('Diego Castillo', '63', '1994-01-18T00:00:00', 'P', '', 'Tampa Bay Rays', '650895');

INSERT INTO Player VALUES ('Yonny Chirinos', '72', '1993-12-26T00:00:00', 'P', '', 'Tampa Bay Rays', '630023');

INSERT INTO Player VALUES ('Ji-Man Choi', '26', '1991-05-19T00:00:00', '1B', '', 'Tampa Bay Rays', '596847');

INSERT INTO Player VALUES ('Nick Ciuffo', '19', '1995-03-07T00:00:00', 'C', '', 'Tampa Bay Rays', '624419');

INSERT INTO Player VALUES ('Jose De Leon', '87', '1992-08-07T00:00:00', 'P', 'Southern', 'Tampa Bay Rays', '592254');

INSERT INTO Player VALUES ('Matt Duffy', '5', '1991-01-15T00:00:00', '3B', 'Long Beach State', 'Tampa Bay Rays', '622110');

INSERT INTO Player VALUES ('Jake Faria', '34', '1993-07-30T00:00:00', 'P', '', 'Tampa Bay Rays', '607188');

INSERT INTO Player VALUES ('Wilmer Font', '62', '1990-05-24T00:00:00', 'P', '', 'Tampa Bay Rays', '521655');

INSERT INTO Player VALUES ('Ian Gibaut', '', '1993-11-19T00:00:00', 'P', 'Tulane', 'Tampa Bay Rays', '664139');

INSERT INTO Player VALUES ('Tyler Glasnow', '20', '1993-08-23T00:00:00', 'P', '', 'Tampa Bay Rays', '607192');

INSERT INTO Player VALUES ('Guillermo Heredia', '', '1991-01-31T00:00:00', 'LF', '', 'Tampa Bay Rays', '628338');

INSERT INTO Player VALUES ('Brent Honeywell', '', '1995-03-31T00:00:00', 'P', 'Walters State CC', 'Tampa Bay Rays', '641703');

INSERT INTO Player VALUES ('Kevin Kiermaier', '39', '1990-04-22T00:00:00', 'CF', 'Parkland College', 'Tampa Bay Rays', '595281');

INSERT INTO Player VALUES ('Adam Kolarek', '56', '1989-01-14T00:00:00', 'P', 'Maryland', 'Tampa Bay Rays', '592473');

INSERT INTO Player VALUES ('Brandon Lowe', '35', '1994-07-06T00:00:00', '2B', 'Maryland', 'Tampa Bay Rays', '664040');

INSERT INTO Player VALUES ('Joe McCarthy', '', '1994-02-23T00:00:00', 'LF', 'Virginia', 'Tampa Bay Rays', '663411');

INSERT INTO Player VALUES ('Austin Meadows', '17', '1995-05-03T00:00:00', 'CF', '', 'Tampa Bay Rays', '640457');

INSERT INTO Player VALUES ('Andrew Moore', '', '1994-06-02T00:00:00', 'P', 'Oregon State', 'Tampa Bay Rays', '621058');

INSERT INTO Player VALUES ('Michael Perez', '43', '1992-08-07T00:00:00', 'C', '', 'Tampa Bay Rays', '605421');

INSERT INTO Player VALUES ('Tommy Pham', '29', '1988-03-08T00:00:00', 'CF', '', 'Tampa Bay Rays', '502054');

INSERT INTO Player VALUES ('Austin Pruitt', '50', '1989-08-31T00:00:00', 'P', 'Houston', 'Tampa Bay Rays', '643493');

INSERT INTO Player VALUES ('Daniel Robertson', '28', '1994-03-22T00:00:00', '2B', '', 'Tampa Bay Rays', '621002');

INSERT INTO Player VALUES ('Chaz Roe', '52', '1986-10-09T00:00:00', 'P', '', 'Tampa Bay Rays', '475054');

INSERT INTO Player VALUES ('Jesus Sanchez', '', '1997-10-07T00:00:00', 'RF', '', 'Tampa Bay Rays', '660821');

INSERT INTO Player VALUES ('Jaime Schultz', '57', '1991-06-20T00:00:00', 'P', 'High Point', 'Tampa Bay Rays', '621289');

INSERT INTO Player VALUES ('Blake Snell', '4', '1992-12-04T00:00:00', 'P', '', 'Tampa Bay Rays', '605483');

INSERT INTO Player VALUES ('Ryne Stanek', '55', '1991-07-26T00:00:00', 'P', 'Arkansas', 'Tampa Bay Rays', '592773');

INSERT INTO Player VALUES ('Andrew Velazquez', '11', '1994-07-14T00:00:00', 'SS', '', 'Tampa Bay Rays', '623205');

INSERT INTO Player VALUES ('Joey Wendle', '18', '1990-04-26T00:00:00', '2B', 'West Chester, PA', 'Tampa Bay Rays', '621563');

INSERT INTO Player VALUES ('Hunter Wood', '61', '1993-08-12T00:00:00', 'P', 'Howard College', 'Tampa Bay Rays', '621056');

INSERT INTO Player VALUES ('Ryan Yarbrough', '48', '1991-12-31T00:00:00', 'P', 'Old Dominion', 'Tampa Bay Rays', '642232');

INSERT INTO Player VALUES ('Mike Zunino', '', '1991-03-25T00:00:00', 'C', 'Florida', 'Tampa Bay Rays', '572287');

INSERT INTO Player VALUES ('Elvis Andrus', '1', '1988-08-26T00:00:00', 'SS', '', 'Texas Rangers', '462101');

INSERT INTO Player VALUES ('Matt Bush', '51', '1986-02-08T00:00:00', 'P', '', 'Texas Rangers', '456713');

INSERT INTO Player VALUES ('Willie Calhoun', '5', '1994-11-04T00:00:00', 'LF', 'Yavapai JC, AZ', 'Texas Rangers', '641432');

INSERT INTO Player VALUES ('Shin-Soo Choo', '17', '1982-07-13T00:00:00', 'RF', '', 'Texas Rangers', '425783');

INSERT INTO Player VALUES ('Alex Claudio', '58', '1992-01-31T00:00:00', 'P', '', 'Texas Rangers', '592222');

INSERT INTO Player VALUES ('Zac Curtis', '50', '1992-07-04T00:00:00', 'P', 'Middle Tennessee State', 'Texas Rangers', '657205');

INSERT INTO Player VALUES ('Delino DeShields', '3', '1992-08-16T00:00:00', 'CF', '', 'Texas Rangers', '592261');

INSERT INTO Player VALUES ('Joey Gallo', '13', '1993-11-19T00:00:00', 'LF', '', 'Texas Rangers', '608336');

INSERT INTO Player VALUES ('Nick Gardewine', '45', '1993-08-15T00:00:00', 'P', 'Kaskaskia CC', 'Texas Rangers', '643320');

INSERT INTO Player VALUES ('Ronald Guzman', '67', '1994-10-20T00:00:00', '1B', '', 'Texas Rangers', '608597');

INSERT INTO Player VALUES ('Taylor Hearn', '', '1994-08-30T00:00:00', 'P', 'Oklahoma Baptist', 'Texas Rangers', '621368');

INSERT INTO Player VALUES ('Scott Heineman', '', '1992-12-04T00:00:00', 'RF', 'Oregon', 'Texas Rangers', '595981');

INSERT INTO Player VALUES ('Jonathan Hernandez', '72', '1996-07-06T00:00:00', 'P', '', 'Texas Rangers', '642546');

INSERT INTO Player VALUES ('Wei-Chieh Huang', '', '1993-09-26T00:00:00', 'P', '', 'Texas Rangers', '658791');

INSERT INTO Player VALUES ('Ariel Jurado', '57', '1996-01-30T00:00:00', 'P', '', 'Texas Rangers', '642558');

INSERT INTO Player VALUES ('Isiah Kiner-Falefa', '9', '1995-03-23T00:00:00', '3B', '', 'Texas Rangers', '643396');

INSERT INTO Player VALUES ('Jose Leclerc', '62', '1993-12-19T00:00:00', 'P', '', 'Texas Rangers', '600917');

INSERT INTO Player VALUES ('Brett Martin', '', '1995-04-28T00:00:00', 'P', 'Walters State CC', 'Texas Rangers', '656685');

INSERT INTO Player VALUES ('Chris Martin', '31', '1986-06-02T00:00:00', 'P', 'McLennan CC, TX', 'Texas Rangers', '455119');

INSERT INTO Player VALUES ('Jeff Mathis', '', '1983-03-31T00:00:00', 'C', '', 'Texas Rangers', '425772');

INSERT INTO Player VALUES ('Nomar Mazara', '30', '1995-04-26T00:00:00', 'RF', '', 'Texas Rangers', '608577');

INSERT INTO Player VALUES ('Yohander Mendez', '65', '1995-01-17T00:00:00', 'P', '', 'Texas Rangers', '622795');

INSERT INTO Player VALUES ('Mike Minor', '36', '1987-12-26T00:00:00', 'P', 'Vanderbilt', 'Texas Rangers', '501985');

INSERT INTO Player VALUES ('Rougned Odor', '12', '1994-02-03T00:00:00', '2B', '', 'Texas Rangers', '596059');

INSERT INTO Player VALUES ('Joe Palumbo', '', '1994-10-26T00:00:00', 'P', '', 'Texas Rangers', '643478');

INSERT INTO Player VALUES ('C.D. Pelham', '64', '1995-02-21T00:00:00', 'P', 'Spartanburg Methodist College', 'Texas Rangers', '641962');

INSERT INTO Player VALUES ('Jurickson Profar', '19', '1993-02-20T00:00:00', 'SS', '', 'Texas Rangers', '595777');

INSERT INTO Player VALUES ('Jack Reinheimer', '', '1992-07-19T00:00:00', 'SS', 'East Carolina', 'Texas Rangers', '595373');

INSERT INTO Player VALUES ('Drew Robinson', '18', '1992-04-20T00:00:00', 'CF', '', 'Texas Rangers', '592685');

INSERT INTO Player VALUES ('Ricardo Rodriguez', '68', '1992-08-31T00:00:00', 'P', '', 'Texas Rangers', '600965');

INSERT INTO Player VALUES ('Connor Sadzeck', '59', '1991-10-01T00:00:00', 'P', 'Howard College', 'Texas Rangers', '592712');

INSERT INTO Player VALUES ('Adrian Sampson', '52', '1991-10-07T00:00:00', 'P', 'Bellevue, WA', 'Texas Rangers', '592716');

INSERT INTO Player VALUES ('Drew Smyly', '', '1989-06-13T00:00:00', 'P', 'Arkansas', 'Texas Rangers', '592767');

INSERT INTO Player VALUES ('Jeffrey Springs', '54', '1992-09-20T00:00:00', 'P', 'Appalachian State', 'Texas Rangers', '605488');

INSERT INTO Player VALUES ('Carlos Tocci', '15', '1995-08-23T00:00:00', 'CF', '', 'Texas Rangers', '624636');

INSERT INTO Player VALUES ('Jose Trevino', '', '1992-11-28T00:00:00', 'C', 'Oral Roberts', 'Texas Rangers', '624431');

INSERT INTO Player VALUES ('Edinson Volquez', '', '1983-07-03T00:00:00', 'P', '', 'Texas Rangers', '450172');

INSERT INTO Player VALUES ('Anthony Alford', '30', '1994-07-20T00:00:00', 'CF', 'Mississippi', 'Toronto Blue Jays', '546990');

INSERT INTO Player VALUES ('Danny Barnes', '24', '1989-10-21T00:00:00', 'P', 'Princeton', 'Toronto Blue Jays', '592130');

INSERT INTO Player VALUES ('Joe Biagini', '31', '1990-05-29T00:00:00', 'P', 'UC Davis', 'Toronto Blue Jays', '607352');

INSERT INTO Player VALUES ('Ryan Borucki', '56', '1994-03-31T00:00:00', 'P', '', 'Toronto Blue Jays', '621366');

INSERT INTO Player VALUES ('Jonathan Davis', '67', '1992-05-12T00:00:00', 'CF', 'Central Arkansas', 'Toronto Blue Jays', '641505');

INSERT INTO Player VALUES ('Yennsy Diaz', '', '1996-11-15T00:00:00', 'P', '', 'Toronto Blue Jays', '660546');

INSERT INTO Player VALUES ('Oliver Drake', '', '1987-01-13T00:00:00', 'P', 'United States Naval Academy', 'Toronto Blue Jays', '543118');

INSERT INTO Player VALUES ('Brandon Drury', '10', '1992-08-21T00:00:00', '3B', '', 'Toronto Blue Jays', '592273');

INSERT INTO Player VALUES ('Sam Gaviglio', '43', '1990-05-22T00:00:00', 'P', 'Oregon State', 'Toronto Blue Jays', '543208');

INSERT INTO Player VALUES ('Ken Giles', '51', '1990-09-20T00:00:00', 'P', 'Yavapai College', 'Toronto Blue Jays', '571704');

INSERT INTO Player VALUES ('Randal Grichuk', '15', '1991-08-13T00:00:00', 'RF', '', 'Toronto Blue Jays', '545341');

INSERT INTO Player VALUES ('Lourdes Gurriel Jr.', '13', '1993-10-10T00:00:00', '2B', '', 'Toronto Blue Jays', '666971');

INSERT INTO Player VALUES ('Teoscar Hernandez', '37', '1992-10-15T00:00:00', 'LF', '', 'Toronto Blue Jays', '606192');

INSERT INTO Player VALUES ('Danny Jansen', '9', '1995-04-15T00:00:00', 'C', '', 'Toronto Blue Jays', '643376');

INSERT INTO Player VALUES ('Luke Maile', '21', '1991-02-06T00:00:00', 'C', 'Kentucky', 'Toronto Blue Jays', '571912');

INSERT INTO Player VALUES ('Russell Martin', '55', '1983-02-15T00:00:00', 'C', 'Chipola Junior College', 'Toronto Blue Jays', '431145');

INSERT INTO Player VALUES ('Tim Mayza', '58', '1992-01-15T00:00:00', 'P', 'Millersville, PA', 'Toronto Blue Jays', '641835');

INSERT INTO Player VALUES ('Reese McGuire', '70', '1995-03-02T00:00:00', 'C', '', 'Toronto Blue Jays', '624512');

INSERT INTO Player VALUES ('Billy McKinney', '28', '1994-08-23T00:00:00', 'LF', '', 'Toronto Blue Jays', '641856');

INSERT INTO Player VALUES ('Julian Merryweather', '', '1991-10-14T00:00:00', 'P', 'Oklahoma Baptist', 'Toronto Blue Jays', '657240');

INSERT INTO Player VALUES ('Kendrys Morales', '8', '1983-06-20T00:00:00', 'DH', '', 'Toronto Blue Jays', '434778');

INSERT INTO Player VALUES ('Patrick Murphy', '', '1995-06-10T00:00:00', 'P', '', 'Toronto Blue Jays', '641907');

INSERT INTO Player VALUES ('Thomas Pannone', '45', '1994-04-28T00:00:00', 'P', 'CC of Southern Nevada', 'Toronto Blue Jays', '623381');

INSERT INTO Player VALUES ('David Paulino', '22', '1994-02-06T00:00:00', 'P', '', 'Toronto Blue Jays', '600944');

INSERT INTO Player VALUES ('Hector Perez', '', '1996-06-06T00:00:00', 'P', '', 'Toronto Blue Jays', '660431');

INSERT INTO Player VALUES ('Kevin Pillar', '11', '1989-01-04T00:00:00', 'CF', 'Cal State Dominguez Hills', 'Toronto Blue Jays', '607680');

INSERT INTO Player VALUES ('Dalton Pompey', '23', '1992-12-11T00:00:00', 'RF', '', 'Toronto Blue Jays', '592647');

INSERT INTO Player VALUES ('Sean Reid-Foley', '54', '1995-08-30T00:00:00', 'P', '', 'Toronto Blue Jays', '656887');

INSERT INTO Player VALUES ('Aaron Sanchez', '41', '1992-07-01T00:00:00', 'P', '', 'Toronto Blue Jays', '592717');

INSERT INTO Player VALUES ('Dwight Smith Jr.', '27', '1992-10-26T00:00:00', 'LF', '', 'Toronto Blue Jays', '596105');

INSERT INTO Player VALUES ('Justin Smoak', '14', '1986-12-05T00:00:00', '1B', 'South Carolina', 'Toronto Blue Jays', '475253');

INSERT INTO Player VALUES ('Yangervis Solarte', '26', '1987-07-03T00:00:00', '3B', '', 'Toronto Blue Jays', '500208');

INSERT INTO Player VALUES ('Marcus Stroman', '6', '1991-05-01T00:00:00', 'P', 'Duke', 'Toronto Blue Jays', '573186');

INSERT INTO Player VALUES ('Rowdy Tellez', '68', '1995-03-16T00:00:00', '1B', '', 'Toronto Blue Jays', '642133');

INSERT INTO Player VALUES ('Ryan Tepera', '52', '1987-11-03T00:00:00', 'P', 'Sam Houston State', 'Toronto Blue Jays', '572193');

INSERT INTO Player VALUES ('Trent Thornton', '', '1993-09-30T00:00:00', 'P', 'North Carolina', 'Toronto Blue Jays', '663423');

INSERT INTO Player VALUES ('Devon Travis', '29', '1991-02-21T00:00:00', '2B', 'Florida State', 'Toronto Blue Jays', '581527');

INSERT INTO Player VALUES ('Troy Tulowitzki', '2', '1984-10-10T00:00:00', 'SS', 'Long Beach State', 'Toronto Blue Jays', '453064');

INSERT INTO Player VALUES ('Richard Urena', '7', '1996-02-26T00:00:00', 'SS', '', 'Toronto Blue Jays', '620446');

INSERT INTO Player VALUES ('Jacob Waguespack', '', '1993-11-05T00:00:00', 'P', 'Mississippi', 'Toronto Blue Jays', '621097');

INSERT INTO Player VALUES ('Ehire Adrianza', '16', '1989-08-21T00:00:00', 'SS', '', 'Minnesota Twins', '501303');

INSERT INTO Player VALUES ('Luis Arraez', '', '1997-04-09T00:00:00', '2B', '', 'Minnesota Twins', '650333');

INSERT INTO Player VALUES ('Willians Astudillo', '64', '1991-10-14T00:00:00', 'C', '', 'Minnesota Twins', '553902');

INSERT INTO Player VALUES ('Tyler Austin', '31', '1991-09-06T00:00:00', '1B', '', 'Minnesota Twins', '592122');

INSERT INTO Player VALUES ('Jose Berrios', '17', '1994-05-27T00:00:00', 'P', '', 'Minnesota Twins', '621244');

INSERT INTO Player VALUES ('Byron Buxton', '', '1993-12-18T00:00:00', 'CF', '', 'Minnesota Twins', '621439');

INSERT INTO Player VALUES ('Jason Castro', '15', '1987-06-18T00:00:00', 'C', 'Stanford', 'Minnesota Twins', '488771');

INSERT INTO Player VALUES ('Jake Cave', '60', '1992-12-04T00:00:00', 'CF', '', 'Minnesota Twins', '595909');

INSERT INTO Player VALUES ('C.J. Cron', '', '1990-01-05T00:00:00', '1B', 'Utah', 'Minnesota Twins', '543068');

INSERT INTO Player VALUES ('John Curtiss', '27', '1993-04-05T00:00:00', 'P', 'Texas', 'Minnesota Twins', '595928');

INSERT INTO Player VALUES ('Chase De Jong', '61', '1993-12-29T00:00:00', 'P', '', 'Minnesota Twins', '608328');

INSERT INTO Player VALUES ('Tyler Duffey', '21', '1990-12-27T00:00:00', 'P', 'Rice', 'Minnesota Twins', '608648');

INSERT INTO Player VALUES ('Mitch Garver', '23', '1991-01-15T00:00:00', 'C', 'New Mexico', 'Minnesota Twins', '641598');

INSERT INTO Player VALUES ('Kyle Gibson', '44', '1987-10-23T00:00:00', 'P', 'Missouri', 'Minnesota Twins', '502043');

INSERT INTO Player VALUES ('Stephen Gonsalves', '59', '1994-07-08T00:00:00', 'P', '', 'Minnesota Twins', '624427');

INSERT INTO Player VALUES ('Nick Gordon', '', '1995-10-24T00:00:00', 'SS', '', 'Minnesota Twins', '624503');

INSERT INTO Player VALUES ('Zack Granite', '', '1992-09-17T00:00:00', 'CF', 'Seton Hall', 'Minnesota Twins', '643335');

INSERT INTO Player VALUES ('Robbie Grossman', '36', '1989-09-16T00:00:00', 'RF', '', 'Minnesota Twins', '543257');

INSERT INTO Player VALUES ('Trevor Hildenberger', '39', '1990-12-15T00:00:00', 'P', 'California', 'Minnesota Twins', '657610');

INSERT INTO Player VALUES ('Max Kepler', '26', '1993-02-10T00:00:00', 'RF', '', 'Minnesota Twins', '596146');

INSERT INTO Player VALUES ('Zack Littell', '52', '1995-10-05T00:00:00', 'P', '', 'Minnesota Twins', '641793');

INSERT INTO Player VALUES ('Matt Magill', '68', '1989-11-10T00:00:00', 'P', '', 'Minnesota Twins', '543483');

INSERT INTO Player VALUES ('Trevor May', '65', '1989-09-23T00:00:00', 'P', '', 'Minnesota Twins', '543507');

INSERT INTO Player VALUES ('Adalberto Mejia', '49', '1993-06-20T00:00:00', 'P', '', 'Minnesota Twins', '606167');

INSERT INTO Player VALUES ('Gabriel Moya', '58', '1995-01-09T00:00:00', 'P', '', 'Minnesota Twins', '622382');

INSERT INTO Player VALUES ('Jake Odorizzi', '12', '1990-03-27T00:00:00', 'P', '', 'Minnesota Twins', '543606');

INSERT INTO Player VALUES ('Michael Pineda', '35', '1989-01-18T00:00:00', 'P', '', 'Minnesota Twins', '501381');

INSERT INTO Player VALUES ('Jorge Polanco', '11', '1993-07-05T00:00:00', 'SS', '', 'Minnesota Twins', '593871');

INSERT INTO Player VALUES ('Addison Reed', '43', '1988-12-27T00:00:00', 'P', 'San Diego State', 'Minnesota Twins', '592665');

INSERT INTO Player VALUES ('Michael Reed', '', '1992-11-18T00:00:00', 'CF', '', 'Minnesota Twins', '605439');

INSERT INTO Player VALUES ('Taylor Rogers', '55', '1990-12-17T00:00:00', 'P', 'Kentucky', 'Minnesota Twins', '573124');

INSERT INTO Player VALUES ('Fernando Romero', '', '1994-12-24T00:00:00', 'P', '', 'Minnesota Twins', '622864');

INSERT INTO Player VALUES ('Eddie Rosario', '20', '1991-09-28T00:00:00', 'LF', '', 'Minnesota Twins', '592696');

INSERT INTO Player VALUES ('Miguel Sano', '22', '1993-05-11T00:00:00', '3B', '', 'Minnesota Twins', '593934');

INSERT INTO Player VALUES ('Aaron Slegers', '50', '1992-09-04T00:00:00', 'P', 'Indiana', 'Minnesota Twins', '642083');

INSERT INTO Player VALUES ('Kohl Stewart', '53', '1994-10-07T00:00:00', 'P', '', 'Minnesota Twins', '640464');

INSERT INTO Player VALUES ('Lewis Thorpe', '', '1995-11-23T00:00:00', 'P', '', 'Minnesota Twins', '626929');

INSERT INTO Player VALUES ('Andrew Vasquez', '62', '1993-09-14T00:00:00', 'P', 'Westmont, CA', 'Minnesota Twins', '607755');

INSERT INTO Player VALUES ('LaMonte Wade', '', '1994-01-01T00:00:00', 'LF', 'Maryland', 'Minnesota Twins', '664774');

INSERT INTO Player VALUES ('Jorge Alfaro', '38', '1993-06-11T00:00:00', 'C', '', 'Philadelphia Phillies', '595751');

INSERT INTO Player VALUES ('Aaron Altherr', '23', '1991-01-14T00:00:00', 'CF', '', 'Philadelphia Phillies', '571437');

INSERT INTO Player VALUES ('Drew Anderson', '63', '1994-03-22T00:00:00', 'P', '', 'Philadelphia Phillies', '623454');

INSERT INTO Player VALUES ('Victor Arano', '64', '1995-02-07T00:00:00', 'P', '', 'Philadelphia Phillies', '644364');

INSERT INTO Player VALUES ('Jake Arrieta', '49', '1986-03-06T00:00:00', 'P', 'Texas Christian', 'Philadelphia Phillies', '453562');

INSERT INTO Player VALUES ('Luis Avilan', '70', '1989-07-19T00:00:00', 'P', '', 'Philadelphia Phillies', '501593');

INSERT INTO Player VALUES ('Justin Bour', '33', '1988-05-28T00:00:00', '1B', 'George Mason', 'Philadelphia Phillies', '571506');

INSERT INTO Player VALUES ('Dylan Cozens', '25', '1994-05-31T00:00:00', 'RF', '', 'Philadelphia Phillies', '622226');

INSERT INTO Player VALUES ('J.P. Crawford', '2', '1995-01-11T00:00:00', 'SS', '', 'Philadelphia Phillies', '641487');

INSERT INTO Player VALUES ('Austin Davis', '54', '1993-02-03T00:00:00', 'P', 'Cal State Bakersfield', 'Philadelphia Phillies', '656354');

INSERT INTO Player VALUES ('Enyel De Los Santos', '51', '1995-12-25T00:00:00', 'P', '', 'Philadelphia Phillies', '660853');

INSERT INTO Player VALUES ('Seranthony Dominguez', '58', '1994-11-25T00:00:00', 'P', '', 'Philadelphia Phillies', '622554');

INSERT INTO Player VALUES ('Zach Eflin', '56', '1994-04-08T00:00:00', 'P', '', 'Philadelphia Phillies', '621107');

INSERT INTO Player VALUES ('Jerad Eickhoff', '48', '1990-07-02T00:00:00', 'P', 'Olney Central College', 'Philadelphia Phillies', '595191');

INSERT INTO Player VALUES ('Maikel Franco', '7', '1992-08-26T00:00:00', '3B', '', 'Philadelphia Phillies', '596748');

INSERT INTO Player VALUES ('Arquimedes Gamboa', '', '1997-09-23T00:00:00', 'SS', '', 'Philadelphia Phillies', '660614');

INSERT INTO Player VALUES ('Edgar Garcia', '', '1996-10-04T00:00:00', 'P', '', 'Philadelphia Phillies', '658305');

INSERT INTO Player VALUES ('Luis Garcia', '57', '1987-01-30T00:00:00', 'P', '', 'Philadelphia Phillies', '472610');

INSERT INTO Player VALUES ('Cesar Hernandez', '16', '1990-05-23T00:00:00', '2B', '', 'Philadelphia Phillies', '514917');

INSERT INTO Player VALUES ('Odubel Herrera', '37', '1991-12-29T00:00:00', 'CF', '', 'Philadelphia Phillies', '546318');

INSERT INTO Player VALUES ('Rhys Hoskins', '17', '1993-03-17T00:00:00', 'LF', 'Sacramento State', 'Philadelphia Phillies', '656555');

INSERT INTO Player VALUES ('Tommy Hunter', '96', '1986-07-03T00:00:00', 'P', 'Alabama', 'Philadelphia Phillies', '488984');

INSERT INTO Player VALUES ('Scott Kingery', '4', '1994-04-29T00:00:00', 'SS', 'Arizona', 'Philadelphia Phillies', '664068');

INSERT INTO Player VALUES ('Andrew Knapp', '15', '1991-11-09T00:00:00', 'C', 'California', 'Philadelphia Phillies', '595284');

INSERT INTO Player VALUES ('Adonis Medina', '', '1996-12-18T00:00:00', 'P', '', 'Philadelphia Phillies', '658431');

INSERT INTO Player VALUES ('Adam Morgan', '46', '1990-02-27T00:00:00', 'P', 'Alabama', 'Philadelphia Phillies', '605388');

INSERT INTO Player VALUES ('Hector Neris', '50', '1989-06-14T00:00:00', 'P', '', 'Philadelphia Phillies', '593576');

INSERT INTO Player VALUES ('Pat Neshek', '93', '1980-09-04T00:00:00', 'P', 'Butler', 'Philadelphia Phillies', '450212');

INSERT INTO Player VALUES ('Aaron Nola', '27', '1993-06-04T00:00:00', 'P', 'Louisiana State', 'Philadelphia Phillies', '605400');

INSERT INTO Player VALUES ('Nick Pivetta', '43', '1993-02-14T00:00:00', 'P', 'New Mexico Junior College', 'Philadelphia Phillies', '601713');

INSERT INTO Player VALUES ('Roman Quinn', '24', '1993-05-14T00:00:00', 'CF', '', 'Philadelphia Phillies', '596451');

INSERT INTO Player VALUES ('Edubray Ramos', '61', '1992-12-19T00:00:00', 'P', '', 'Philadelphia Phillies', '591693');

INSERT INTO Player VALUES ('Yacksel Rios', '53', '1993-06-27T00:00:00', 'P', '', 'Philadelphia Phillies', '605441');

INSERT INTO Player VALUES ('Carlos Santana', '41', '1986-04-08T00:00:00', '1B', '', 'Philadelphia Phillies', '467793');

INSERT INTO Player VALUES ('Ranger Suarez', '55', '1995-08-26T00:00:00', 'P', '', 'Philadelphia Phillies', '624133');

INSERT INTO Player VALUES ('Vince Velasquez', '28', '1992-06-07T00:00:00', 'P', '', 'Philadelphia Phillies', '592826');

INSERT INTO Player VALUES ('Mitch Walding', '29', '1992-09-10T00:00:00', '3B', '', 'Philadelphia Phillies', '605520');

INSERT INTO Player VALUES ('Nick Williams', '5', '1993-09-08T00:00:00', 'RF', '', 'Philadelphia Phillies', '608384');

INSERT INTO Player VALUES ('Ronald Acuna Jr.', '13', '1997-12-18T00:00:00', 'LF', '', 'Atlanta Braves', '660670');

INSERT INTO Player VALUES ('Ozzie Albies', '1', '1997-01-07T00:00:00', '2B', '', 'Atlanta Braves', '645277');

INSERT INTO Player VALUES ('Kolby Allard', '36', '1997-08-13T00:00:00', 'P', '', 'Atlanta Braves', '663465');

INSERT INTO Player VALUES ('Jesse Biddle', '63', '1991-10-22T00:00:00', 'P', '', 'Atlanta Braves', '592145');

INSERT INTO Player VALUES ('Johan Camargo', '17', '1993-12-13T00:00:00', '3B', '', 'Atlanta Braves', '622666');

INSERT INTO Player VALUES ('Shane Carle', '51', '1991-08-30T00:00:00', 'P', 'Long Beach State', 'Atlanta Braves', '641438');

INSERT INTO Player VALUES ('Charlie Culberson', '16', '1989-04-10T00:00:00', 'LF', '', 'Atlanta Braves', '518586');

INSERT INTO Player VALUES ('Grant Dayton', '75', '1987-11-25T00:00:00', 'P', 'Auburn', 'Atlanta Braves', '594795');

INSERT INTO Player VALUES ('Josh Donaldson', '20', '1985-12-08T00:00:00', '3B', 'Auburn', 'Atlanta Braves', '518626');

INSERT INTO Player VALUES ('Adam Duvall', '23', '1988-09-04T00:00:00', 'LF', 'Louisville', 'Atlanta Braves', '594807');

INSERT INTO Player VALUES ('Tyler Flowers', '25', '1986-01-24T00:00:00', 'C', 'Chipola Junior College', 'Atlanta Braves', '452095');

INSERT INTO Player VALUES ('Mike Foltynewicz', '26', '1991-10-07T00:00:00', 'P', '', 'Atlanta Braves', '592314');

INSERT INTO Player VALUES ('Freddie Freeman', '5', '1989-09-12T00:00:00', '1B', '', 'Atlanta Braves', '518692');

INSERT INTO Player VALUES ('Sam Freeman', '39', '1987-06-24T00:00:00', 'P', 'Kansas', 'Atlanta Braves', '518693');

INSERT INTO Player VALUES ('Max Fried', '54', '1994-01-18T00:00:00', 'P', '', 'Atlanta Braves', '608331');

INSERT INTO Player VALUES ('Kevin Gausman', '45', '1991-01-06T00:00:00', 'P', 'Louisiana State', 'Atlanta Braves', '592332');

INSERT INTO Player VALUES ('Luiz Gohara', '53', '1996-07-31T00:00:00', 'P', '', 'Atlanta Braves', '627894');

INSERT INTO Player VALUES ('Ender Inciarte', '11', '1990-10-29T00:00:00', 'CF', '', 'Atlanta Braves', '542255');

INSERT INTO Player VALUES ('Alex Jackson', '', '1995-12-25T00:00:00', 'C', '', 'Atlanta Braves', '656577');

INSERT INTO Player VALUES ('Luke Jackson', '64', '1991-08-24T00:00:00', 'P', '', 'Atlanta Braves', '592426');

INSERT INTO Player VALUES ('Raffy Lopez', '', '1987-10-02T00:00:00', 'C', 'Florida State', 'Atlanta Braves', '607257');

INSERT INTO Player VALUES ('Brian McCann', '', '1984-02-20T00:00:00', 'C', '', 'Atlanta Braves', '435263');

INSERT INTO Player VALUES ('A.J. Minter', '33', '1993-09-02T00:00:00', 'P', 'Texas A&M', 'Atlanta Braves', '621345');

INSERT INTO Player VALUES ('Sean Newcomb', '15', '1993-06-12T00:00:00', 'P', 'Hartford', 'Atlanta Braves', '656794');

INSERT INTO Player VALUES ('Darren O'Day', '56', '1982-10-22T00:00:00', 'P', 'Florida', 'Atlanta Braves', '503285');

INSERT INTO Player VALUES ('Wes Parsons', '67', '1992-09-06T00:00:00', 'P', 'Jackson State CC', 'Atlanta Braves', '641149');

INSERT INTO Player VALUES ('Rio Ruiz', '14', '1994-05-22T00:00:00', '3B', '', 'Atlanta Braves', '547004');

INSERT INTO Player VALUES ('Chad Sobotka', '61', '1993-07-10T00:00:00', 'P', 'South Carolina - Upstate', 'Atlanta Braves', '656977');

INSERT INTO Player VALUES ('Mike Soroka', '40', '1997-08-04T00:00:00', 'P', '', 'Atlanta Braves', '647336');

INSERT INTO Player VALUES ('Dansby Swanson', '7', '1994-02-11T00:00:00', 'SS', 'Vanderbilt', 'Atlanta Braves', '621020');

INSERT INTO Player VALUES ('Julio Teheran', '49', '1991-01-27T00:00:00', 'P', '', 'Atlanta Braves', '527054');

INSERT INTO Player VALUES ('Touki Toussaint', '62', '1996-06-20T00:00:00', 'P', '', 'Atlanta Braves', '657053');

INSERT INTO Player VALUES ('Jonny Venters', '48', '1985-03-20T00:00:00', 'P', 'Indian River CC', 'Atlanta Braves', '458924');

INSERT INTO Player VALUES ('Arodys Vizcaino', '38', '1990-11-13T00:00:00', 'P', '', 'Atlanta Braves', '527055');

INSERT INTO Player VALUES ('Jacob Webb', '', '1993-08-15T00:00:00', 'P', 'Tabor College', 'Atlanta Braves', '657097');

INSERT INTO Player VALUES ('Patrick Weigel', '', '1994-07-08T00:00:00', 'P', 'Houston', 'Atlanta Braves', '622256');

INSERT INTO Player VALUES ('Bryse Wilson', '72', '1997-12-20T00:00:00', 'P', '', 'Atlanta Braves', '669060');

INSERT INTO Player VALUES ('Dan Winkler', '58', '1990-02-02T00:00:00', 'P', 'Central Florida', 'Atlanta Braves', '595465');

INSERT INTO Player VALUES ('Kyle Wright', '73', '1995-10-02T00:00:00', 'P', 'Vanderbilt', 'Atlanta Braves', '657140');

INSERT INTO Player VALUES ('Huascar Ynoa', '', '1998-05-28T00:00:00', 'P', '', 'Atlanta Braves', '660623');

INSERT INTO Player VALUES ('Jose Abreu', '79', '1987-01-29T00:00:00', '1B', '', 'Chicago White Sox', '547989');

INSERT INTO Player VALUES ('Micker Adolfo', '', '1996-09-11T00:00:00', 'OF', '', 'Chicago White Sox', '650520');

INSERT INTO Player VALUES ('Tim Anderson', '7', '1993-06-23T00:00:00', 'SS', 'East Central CC, MS', 'Chicago White Sox', '641313');

INSERT INTO Player VALUES ('Manny Banuelos', '', '1991-03-13T00:00:00', 'P', '', 'Chicago White Sox', '544365');

INSERT INTO Player VALUES ('Luis Alexander Basabe', '', '1996-08-26T00:00:00', 'CF', '', 'Chicago White Sox', '642772');

INSERT INTO Player VALUES ('Aaron Bummer', '39', '1993-09-21T00:00:00', 'P', 'Nebraska', 'Chicago White Sox', '607481');

INSERT INTO Player VALUES ('Ryan Burr', '61', '1994-05-28T00:00:00', 'P', 'Arizona State', 'Chicago White Sox', '621114');

INSERT INTO Player VALUES ('Welington Castillo', '21', '1987-04-24T00:00:00', 'C', '', 'Chicago White Sox', '456078');

INSERT INTO Player VALUES ('Dylan Cease', '', '1995-12-28T00:00:00', 'P', '', 'Chicago White Sox', '656302');

INSERT INTO Player VALUES ('Ian Clarkin', '', '1995-02-14T00:00:00', 'P', '', 'Chicago White Sox', '624420');

INSERT INTO Player VALUES ('Ryan Cordell', '49', '1992-03-31T00:00:00', 'CF', 'Liberty University', 'Chicago White Sox', '641477');

INSERT INTO Player VALUES ('Dylan Covey', '68', '1991-08-14T00:00:00', 'P', 'San Diego', 'Chicago White Sox', '592229');

INSERT INTO Player VALUES ('Matt Davidson', '24', '1991-03-26T00:00:00', 'DH', '', 'Chicago White Sox', '571602');

INSERT INTO Player VALUES ('Nicky Delmonico', '30', '1992-07-12T00:00:00', 'LF', '', 'Chicago White Sox', '547170');

INSERT INTO Player VALUES ('Adam Engel', '15', '1991-12-09T00:00:00', 'CF', 'Louisville', 'Chicago White Sox', '641553');

INSERT INTO Player VALUES ('Caleb Frare', '67', '1993-07-08T00:00:00', 'P', '', 'Chicago White Sox', '621350');

INSERT INTO Player VALUES ('Jace Fry', '57', '1993-07-09T00:00:00', 'P', 'Oregon State', 'Chicago White Sox', '605240');

INSERT INTO Player VALUES ('Carson Fulmer', '', '1993-12-13T00:00:00', 'P', 'Vanderbilt', 'Chicago White Sox', '608334');

INSERT INTO Player VALUES ('Avisail Garcia', '26', '1991-06-12T00:00:00', 'RF', '', 'Chicago White Sox', '541645');

INSERT INTO Player VALUES ('Leury Garcia', '28', '1991-03-18T00:00:00', 'LF', '', 'Chicago White Sox', '544725');

INSERT INTO Player VALUES ('Lucas Giolito', '27', '1994-07-14T00:00:00', 'P', '', 'Chicago White Sox', '608337');

INSERT INTO Player VALUES ('Ian Hamilton', '63', '1995-06-16T00:00:00', 'P', 'Washington State', 'Chicago White Sox', '641656');

INSERT INTO Player VALUES ('Eloy Jimenez', '', '1996-11-27T00:00:00', 'LF', '', 'Chicago White Sox', '650391');

INSERT INTO Player VALUES ('Nate Jones', '65', '1986-01-28T00:00:00', 'P', 'Northern Kentucky', 'Chicago White Sox', '518858');

INSERT INTO Player VALUES ('Michael Kopech', '34', '1996-04-30T00:00:00', 'P', '', 'Chicago White Sox', '656629');

INSERT INTO Player VALUES ('Reynaldo Lopez', '40', '1994-01-04T00:00:00', 'P', '', 'Chicago White Sox', '625643');

INSERT INTO Player VALUES ('Kodi Medeiros', '', '1996-05-25T00:00:00', 'P', '', 'Chicago White Sox', '656727');

INSERT INTO Player VALUES ('Juan Minaya', '37', '1990-09-18T00:00:00', 'P', '', 'Chicago White Sox', '573668');

INSERT INTO Player VALUES ('Yoan Moncada', '10', '1995-05-27T00:00:00', '2B', '', 'Chicago White Sox', '660162');

INSERT INTO Player VALUES ('Omar Narvaez', '38', '1992-02-10T00:00:00', 'C', '', 'Chicago White Sox', '553882');

INSERT INTO Player VALUES ('Daniel Palka', '18', '1991-10-28T00:00:00', 'RF', 'Georgia Tech', 'Chicago White Sox', '594953');

INSERT INTO Player VALUES ('Carlos Rodon', '55', '1992-12-10T00:00:00', 'P', 'North Carolina State', 'Chicago White Sox', '607074');

INSERT INTO Player VALUES ('Jose Rondon', '20', '1994-03-03T00:00:00', '2B', '', 'Chicago White Sox', '602922');

INSERT INTO Player VALUES ('Jose Ruiz', '66', '1994-10-21T00:00:00', 'P', '', 'Chicago White Sox', '614179');

INSERT INTO Player VALUES ('Yolmer Sanchez', '5', '1992-06-29T00:00:00', '3B', '', 'Chicago White Sox', '570560');

INSERT INTO Player VALUES ('Jordan Stephens', '', '1992-09-12T00:00:00', 'P', 'Rice', 'Chicago White Sox', '596111');

INSERT INTO Player VALUES ('Charlie Tilson', '22', '1992-12-02T00:00:00', 'CF', '', 'Chicago White Sox', '605508');

INSERT INTO Player VALUES ('Thyago Vieira', '50', '1993-07-01T00:00:00', 'P', '', 'Chicago White Sox', '600986');

INSERT INTO Player VALUES ('Seby Zavala', '', '1993-08-28T00:00:00', 'C', 'San Diego State', 'Chicago White Sox', '664874');

INSERT INTO Player VALUES ('Sandy Alcantara', '22', '1995-09-07T00:00:00', 'P', '', 'Miami Marlins', '645261');

INSERT INTO Player VALUES ('Brian Anderson', '15', '1993-05-19T00:00:00', 'RF', 'Arkansas', 'Miami Marlins', '605119');

INSERT INTO Player VALUES ('Nick Anderson', '', '1990-07-05T00:00:00', 'P', 'Mayville State', 'Miami Marlins', '623433');

INSERT INTO Player VALUES ('Jeff Brigham', '43', '1992-02-16T00:00:00', 'P', 'Washington', 'Miami Marlins', '656257');

INSERT INTO Player VALUES ('Lewis Brinson', '9', '1994-05-08T00:00:00', 'CF', '', 'Miami Marlins', '621446');

INSERT INTO Player VALUES ('Starlin Castro', '13', '1990-03-24T00:00:00', '2B', '', 'Miami Marlins', '516770');

INSERT INTO Player VALUES ('Wei-Yin Chen', '54', '1985-07-21T00:00:00', 'P', '', 'Miami Marlins', '612672');

INSERT INTO Player VALUES ('Adam Conley', '61', '1990-05-24T00:00:00', 'P', 'Washington State', 'Miami Marlins', '543045');

INSERT INTO Player VALUES ('Garrett Cooper', '30', '1990-12-25T00:00:00', 'LF', 'Auburn', 'Miami Marlins', '643265');

INSERT INTO Player VALUES ('Austin Dean', '44', '1993-10-14T00:00:00', 'LF', '', 'Miami Marlins', '621573');

INSERT INTO Player VALUES ('Isan Diaz', '', '1996-05-27T00:00:00', '2B', '', 'Miami Marlins', '656371');

INSERT INTO Player VALUES ('Julian Fernandez', '', '1995-12-05T00:00:00', 'P', '', 'Miami Marlins', '642759');

INSERT INTO Player VALUES ('Isaac Galloway', '79', '1989-10-10T00:00:00', 'RF', '', 'Miami Marlins', '543194');

INSERT INTO Player VALUES ('Jarlin Garcia', '66', '1993-01-18T00:00:00', 'P', '', 'Miami Marlins', '606424');

INSERT INTO Player VALUES ('Merandy Gonzalez', '', '1995-10-09T00:00:00', 'P', '', 'Miami Marlins', '642571');

INSERT INTO Player VALUES ('Brett Graves', '53', '1993-01-30T00:00:00', 'P', 'Missouri', 'Miami Marlins', '605255');

INSERT INTO Player VALUES ('Tayron Guerrero', '56', '1991-01-09T00:00:00', 'P', '', 'Miami Marlins', '594027');

INSERT INTO Player VALUES ('Jorge Guzman', '', '1996-01-28T00:00:00', 'P', '', 'Miami Marlins', '660422');

INSERT INTO Player VALUES ('Monte Harrison', '', '1995-08-10T00:00:00', 'CF', '', 'Miami Marlins', '656509');

INSERT INTO Player VALUES ('Elieser Hernandez', '57', '1995-05-03T00:00:00', 'P', '', 'Miami Marlins', '622694');

INSERT INTO Player VALUES ('Jordan Holloway', '', '1996-06-13T00:00:00', 'P', '', 'Miami Marlins', '656548');

INSERT INTO Player VALUES ('Kyle Keller', '', '1993-04-28T00:00:00', 'P', 'Southeastern Louisiana', 'Miami Marlins', '664918');

INSERT INTO Player VALUES ('Tyler Kinley', '39', '1991-01-31T00:00:00', 'P', 'Barry', 'Miami Marlins', '641755');

INSERT INTO Player VALUES ('Pablo Lopez', '49', '1996-03-07T00:00:00', 'P', '', 'Miami Marlins', '641154');

INSERT INTO Player VALUES ('Peter O'Brien', '45', '1990-07-15T00:00:00', 'LF', 'Miami (FL)', 'Miami Marlins', '598284');

INSERT INTO Player VALUES ('Martin Prado', '14', '1983-10-27T00:00:00', '3B', '', 'Miami Marlins', '445988');

INSERT INTO Player VALUES ('Jose Quijada', '', '1995-11-09T00:00:00', 'P', '', 'Miami Marlins', '650671');

INSERT INTO Player VALUES ('J.T. Realmuto', '11', '1991-03-18T00:00:00', 'C', '', 'Miami Marlins', '592663');

INSERT INTO Player VALUES ('Trevor Richards', '63', '1993-05-15T00:00:00', 'P', 'Drury', 'Miami Marlins', '670950');

INSERT INTO Player VALUES ('JT Riddle', '10', '1991-10-12T00:00:00', 'SS', 'Kentucky', 'Miami Marlins', '595375');

INSERT INTO Player VALUES ('Yadiel Rivera', '2', '1992-05-02T00:00:00', '3B', '', 'Miami Marlins', '592680');

INSERT INTO Player VALUES ('Miguel Rojas', '19', '1989-02-24T00:00:00', 'SS', '', 'Miami Marlins', '500743');

INSERT INTO Player VALUES ('Magneuris Sierra', '34', '1996-04-07T00:00:00', 'CF', '', 'Miami Marlins', '642423');

INSERT INTO Player VALUES ('Caleb Smith', '31', '1991-07-28T00:00:00', 'P', 'Sam Houston State', 'Miami Marlins', '592761');

INSERT INTO Player VALUES ('Drew Steckenrider', '71', '1991-01-10T00:00:00', 'P', 'Tennessee', 'Miami Marlins', '608716');

INSERT INTO Player VALUES ('Dan Straily', '58', '1988-12-01T00:00:00', 'P', 'Marshall', 'Miami Marlins', '573185');

INSERT INTO Player VALUES ('Jose Urena', '62', '1991-09-12T00:00:00', 'P', '', 'Miami Marlins', '570632');

INSERT INTO Player VALUES ('Chad Wallach', '17', '1991-11-04T00:00:00', 'C', 'Cal State Fullerton', 'Miami Marlins', '595453');

INSERT INTO Player VALUES ('Nick Wittgren', '64', '1991-05-29T00:00:00', 'P', 'Purdue', 'Miami Marlins', '621295');

INSERT INTO Player VALUES ('Jordan Yamamoto', '', '1996-05-11T00:00:00', 'P', '', 'Miami Marlins', '657141');

INSERT INTO Player VALUES ('Albert Abreu', '87', '1995-09-26T00:00:00', 'P', '', 'New York Yankees', '656061');

INSERT INTO Player VALUES ('Domingo Acevedo', '70', '1994-03-06T00:00:00', 'P', '', 'New York Yankees', '642758');

INSERT INTO Player VALUES ('Chance Adams', '43', '1994-08-10T00:00:00', 'P', 'Dallas Baptist', 'New York Yankees', '664856');

INSERT INTO Player VALUES ('Hanser Alberto', '', '1992-10-17T00:00:00', 'SS', '', 'New York Yankees', '593643');

INSERT INTO Player VALUES ('Miguel Andujar', '41', '1995-03-02T00:00:00', '3B', '', 'New York Yankees', '609280');

INSERT INTO Player VALUES ('Dellin Betances', '68', '1988-03-23T00:00:00', 'P', '', 'New York Yankees', '476454');

INSERT INTO Player VALUES ('Greg Bird', '33', '1992-11-09T00:00:00', '1B', '', 'New York Yankees', '595885');

INSERT INTO Player VALUES ('Parker Bridwell', '', '1991-08-02T00:00:00', 'P', '', 'New York Yankees', '592170');

INSERT INTO Player VALUES ('Luis Cessa', '85', '1992-04-25T00:00:00', 'P', '', 'New York Yankees', '570666');

INSERT INTO Player VALUES ('Aroldis Chapman', '54', '1988-02-28T00:00:00', 'P', '', 'New York Yankees', '547973');

INSERT INTO Player VALUES ('A.J. Cole', '67', '1992-01-05T00:00:00', 'P', '', 'New York Yankees', '595918');

INSERT INTO Player VALUES ('Jacoby Ellsbury', '22', '1983-09-11T00:00:00', 'CF', 'Oregon State', 'New York Yankees', '453056');

INSERT INTO Player VALUES ('Thairo Estrada', '90', '1996-02-22T00:00:00', 'SS', '', 'New York Yankees', '642731');

INSERT INTO Player VALUES ('Clint Frazier', '77', '1994-09-06T00:00:00', 'LF', '', 'New York Yankees', '640449');

INSERT INTO Player VALUES ('Brett Gardner', '11', '1983-08-24T00:00:00', 'LF', 'College of Charleston', 'New York Yankees', '458731');

INSERT INTO Player VALUES ('Domingo German', '65', '1992-08-04T00:00:00', 'P', '', 'New York Yankees', '593334');

INSERT INTO Player VALUES ('Sonny Gray', '55', '1989-11-07T00:00:00', 'P', 'Vanderbilt', 'New York Yankees', '543243');

INSERT INTO Player VALUES ('Chad Green', '57', '1991-05-24T00:00:00', 'P', 'Louisville', 'New York Yankees', '643338');

INSERT INTO Player VALUES ('Didi Gregorius', '18', '1990-02-18T00:00:00', 'SS', '', 'New York Yankees', '544369');

INSERT INTO Player VALUES ('Joe Harvey', '', '1992-01-09T00:00:00', 'P', 'Pittsburgh', 'New York Yankees', '642840');

INSERT INTO Player VALUES ('Ben Heller', '', '1991-08-05T00:00:00', 'P', 'Olivet Nazarene', 'New York Yankees', '621294');

INSERT INTO Player VALUES ('Aaron Hicks', '31', '1989-10-02T00:00:00', 'CF', '', 'New York Yankees', '543305');

INSERT INTO Player VALUES ('Kyle Higashioka', '66', '1990-04-20T00:00:00', 'C', '', 'New York Yankees', '543309');

INSERT INTO Player VALUES ('Jonathan Holder', '56', '1993-06-09T00:00:00', 'P', 'Mississippi State', 'New York Yankees', '656547');

INSERT INTO Player VALUES ('Aaron Judge', '99', '1992-04-26T00:00:00', 'RF', 'Fresno State', 'New York Yankees', '592450');

INSERT INTO Player VALUES ('Tommy Kahnle', '48', '1989-08-07T00:00:00', 'P', 'Lynn, FL', 'New York Yankees', '592454');

INSERT INTO Player VALUES ('Jonathan Loaisiga', '38', '1994-11-02T00:00:00', 'P', '', 'New York Yankees', '642528');

INSERT INTO Player VALUES ('Tim Locastro', '', '1992-07-14T00:00:00', 'CF', 'Ithaca', 'New York Yankees', '641796');

INSERT INTO Player VALUES ('Jordan Montgomery', '47', '1992-12-27T00:00:00', 'P', 'South Carolina', 'New York Yankees', '656756');

INSERT INTO Player VALUES ('James Paxton', '', '1988-11-06T00:00:00', 'P', 'Kentucky', 'New York Yankees', '572020');

INSERT INTO Player VALUES ('Austin Romine', '28', '1988-11-22T00:00:00', 'C', '', 'New York Yankees', '519222');

INSERT INTO Player VALUES ('CC Sabathia', '52', '1980-07-21T00:00:00', 'P', '', 'New York Yankees', '282332');

INSERT INTO Player VALUES ('Gary Sanchez', '24', '1992-12-02T00:00:00', 'C', '', 'New York Yankees', '596142');

INSERT INTO Player VALUES ('Luis Severino', '40', '1994-02-20T00:00:00', 'P', '', 'New York Yankees', '622663');

INSERT INTO Player VALUES ('Giancarlo Stanton', '27', '1989-11-08T00:00:00', 'LF', '', 'New York Yankees', '519317');

INSERT INTO Player VALUES ('Masahiro Tanaka', '19', '1988-11-01T00:00:00', 'P', '', 'New York Yankees', '547888');

INSERT INTO Player VALUES ('Stephen Tarpley', '71', '1993-02-17T00:00:00', 'P', 'Scottsdale CC, AZ', 'New York Yankees', '605501');

INSERT INTO Player VALUES ('Gleyber Torres', '25', '1996-12-13T00:00:00', '2B', '', 'New York Yankees', '650402');

INSERT INTO Player VALUES ('Luke Voit', '45', '1991-02-13T00:00:00', '1B', 'Missouri State', 'New York Yankees', '572228');

INSERT INTO Player VALUES ('Tyler Wade', '12', '1994-11-23T00:00:00', 'SS', '', 'New York Yankees', '642180');

INSERT INTO Team VALUES('Arizona Diamondbacks', '109', 'Chase Field');

INSERT INTO Team VALUES('Atlanta Braves', '144', 'SunTrust Park');

INSERT INTO Team VALUES('Baltimore Orioles', '110', 'Oriole Park at Camden Yards');

INSERT INTO Team VALUES('Boston Red Sox', '111', 'Fenway Park');

INSERT INTO Team VALUES('Chicago Cubs', '112', 'Wrigley Field');

INSERT INTO Team VALUES('Chicago White Sox', '145', 'Guaranteed Rate Field');

INSERT INTO Team VALUES('Cincinnati Reds', '113', 'Great American Ball Park');

INSERT INTO Team VALUES('Cleveland Indians', '114', 'Progressive Field');

INSERT INTO Team VALUES('Colorado Rockies', '115', 'Coors Field');

INSERT INTO Team VALUES('Detroit Tigers', '116', 'Comerica Park');

INSERT INTO Team VALUES('Houston Astros', '117', 'Minute Maid Park');

INSERT INTO Team VALUES('Kansas City Royals', '118', 'Kauffman Stadium');

INSERT INTO Team VALUES('Los Angeles Angels', '108', 'Angel Stadium of Anaheim');

INSERT INTO Team VALUES('Los Angeles Dodgers', '119', 'Dodger Stadium');

INSERT INTO Team VALUES('Miami Marlins', '146', 'Marlins Park');

INSERT INTO Team VALUES('Milwaukee Brewers', '158', 'Miller Park');

INSERT INTO Team VALUES('Minnesota Twins', '142', 'Target Field');

INSERT INTO Team VALUES('New York Mets', '121', 'Citi Field');

INSERT INTO Team VALUES('New York Yankees', '147', 'Yankee Stadium');

INSERT INTO Team VALUES('Oakland Athletics', '133', 'Oakland Coliseum');

INSERT INTO Team VALUES('Philadelphia Phillies', '143', 'Citizens Bank Park');

INSERT INTO Team VALUES('Pittsburgh Pirates', '134', 'PNC Park');

INSERT INTO Team VALUES('San Diego Padres', '135', 'Petco Park');

INSERT INTO Team VALUES('San Francisco Giants', '137', 'AT&T Park');

INSERT INTO Team VALUES('Seattle Mariners', '136', 'Safeco Field');

INSERT INTO Team VALUES('St. Louis Cardinals', '138', 'Busch Stadium');

INSERT INTO Team VALUES('Tampa Bay Rays', '139', 'Tropicana Field');

INSERT INTO Team VALUES('Texas Rangers', '140', 'Globe Life Park in Arlington');

INSERT INTO Team VALUES('Toronto Blue Jays', '141', 'Rogers Centre');

INSERT INTO Team VALUES('Washington Nationals', '120', 'Nationals Park');

INSERT INTO Injury VALUES('torn ligament in his left hand','621020','Atlanta Braves');
INSERT INTO Injury VALUES('left shoulder soreness','542881','Colorado Rockies');
INSERT INTO Injury VALUES('arthroscopic surgery on his right knee','541645','Chicago White Sox');
INSERT INTO Injury VALUES('left wrist contusion','592178','Chicago Cubs');
INSERT INTO Injury VALUES('stiff back','475582','Washington Nationals');
INSERT INTO Injury VALUES('X-ray revealed a hairline fracture','595281','Tampa Bay Rays');
INSERT INTO Injury VALUES('thigh infection','547989','Chicago White Sox');
INSERT INTO Injury VALUES('Swollen thumb','457759','Los Angeles Dodgers');
INSERT INTO Injury VALUES('right shoulder surgery','641871','Los Angeles Angels');
INSERT INTO Injury VALUES('Right elbow inflammation','642759','Miami Marlins');

ALTER TABLE Stats
ADD CONSTRAINT Stats_Player_Number_FK FOREIGN KEY(PlayerID)
REFERENCES Player(PlayerID);

ALTER TABLE Part_Of
ADD CONSTRAINT Part_Of_Player_Number_FK FOREIGN KEY(PlayerID)
REFERENCES Player(PlayerID);

ALTER TABLE Part_Of
ADD CONSTRAINT Part_Of_Game_Date_FK FOREIGN KEY(Game_Date)
REFERENCES Game(Game_Date);

ALTER TABLE Injury
ADD CONSTRAINT Injury_PlayerID_FK FOREIGN KEY(PlayerID)
REFERENCES Player(PlayerID);

ALTER TABLE Injury
ADD CONSTRAINT Injury_TeamName_FK FOREIGN KEY(TeamName)
REFERENCES Team(TeamName);

ALTER TABLE Final_Score
ADD CONSTRAINT FinalScore_Date_FK FOREIGN KEY(Game_Date)
REFERENCES Game(Game_Date);

ALTER TABLE Player
ADD CONSTRAINT  Player_TeamName_FK FOREIGN KEY(TeamName)
REFERENCES Team(TeamName);

ALTER TABLE Team
ADD CONSTRAINT Team_GameNumber_FK FOREIGN KEY(GameNumber)
REFERENCES Schedule(GameNumber);

ALTER TABLE Color
ADD CONSTRAINT Color_TeamName_FK FOREIGN KEY(TeamName)
REFERENCES Team(TeamName);

ALTER TABLE Coach
ADD CONSTRAINT Coach_TeamName_FK FOREIGN KEY(TeamName)
REFERENCES Team(TeamName);


