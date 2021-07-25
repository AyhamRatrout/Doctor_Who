USE DoctorWho;
GO

CREATE TABLE tempCompanions (
							  CompanionName VARCHAR(350) NOT NULL, 
							  WhoPlayed VARCHAR(350) NOT NULL
							);

BULK INSERT tempCompanions
FROM 'C:\Users\aiham\Doctor_Who\Data_Files\Companions_List.csv'
WITH (
	   ROWTERMINATOR = '0x0a',
	   FIRSTROW = 2,
	   FORMAT = 'CSV'
	 );

INSERT INTO tblCompanion (CompanionName, WhoPlayed)
SELECT CompanionName, WhoPlayed
FROM tempCompanions;

DROP TABLE tempCompanions;