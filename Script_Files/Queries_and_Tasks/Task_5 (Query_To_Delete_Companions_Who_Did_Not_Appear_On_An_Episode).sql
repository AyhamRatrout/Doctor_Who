USE DoctorWho;
GO

SELECT * FROM tblCompanion;

DELETE FROM tblCompanion
WHERE CompanionId IN (
						SELECT CompanionId
						FROM tblCompanion
						EXCEPT
						SELECT CompanionId
						FROM tblEpisodeCompanion
						GROUP BY CompanionId
					 );

SELECT * FROM tblCompanion;