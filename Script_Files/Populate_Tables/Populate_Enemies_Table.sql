USE DoctorWho;
GO

CREATE TABLE tempEnemies(
							EnemyName VARCHAR(350) NOT NULL,
							Description Text NULL DEFAULT NULL
						);

BULK INSERT tempEnemies
FROM 'C:\Users\aiham\Doctor_Who\Data_Files\Enemies_List.csv'
WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0a',
		FORMAT = 'CSV'
	 );

INSERT INTO tblEnemy (EnemyName, Description)
SELECT EnemyName, Description
FROM tempEnemies;

DROP TABLE tempEnemies;