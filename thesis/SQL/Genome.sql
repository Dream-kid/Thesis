DROP TABLE IF EXISTS Sequence
DROP TABLE IF EXISTS Genome  

CREATE TABLE Genome( 
  name text, 
  regionNumber int,
  PRIMARY KEY (regionNumber)
);

CREATE TABLE Sequence( 
  
  id int,
  neuclotides text, 
  regionNumber int,
  FOREIGN KEY (regionNumber) REFERENCES Genome(regionNumber)
);

INSERT INTO Genome
VALUES ('human_genome', 1);

INSERT INTO SEQUENCE
VALUES (1,'human_genome', 1);

C:\xampp\mysql\bin
open cmd type mysql
load data local infile 'C:/Users/lenovo/Desktop/sequence.csv' into table test.sequence FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';



SELECT Genome.name, Sequence.neuclotides, Genome.regionNumber
FROM Genome
INNER JOIN Sequence ON Genome.regionNumber=Sequence.regionNumber 
WHERE Genome.regionNumber =5;

