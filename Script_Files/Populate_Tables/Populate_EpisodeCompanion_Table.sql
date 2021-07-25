USE DoctorWho;
GO

CREATE TABLE tempEpisodeCompanion (
									EpisodeId INT NOT NULL,
								    CompanionId INT NOT NULL
						          );

BULK INSERT tempEpisodeCompanion
FROM 'C:\Users\aiham\Doctor_Who\Data_Files\Episode_Companion_List.csv'
WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0a',
		FORMAT = 'CSV'
	 );

INSERT INTO tblEpisodeCompanion(EpisodeId, CompanionId)
SELECT EpisodeId, CompanionId
FROM tempEpisodeCompanion;

DROP TABLE tempEpisodeCompanion;