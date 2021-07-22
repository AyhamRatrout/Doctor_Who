USE DoctorWho;
GO

CREATE TABLE tblEnemy (
						EnemyId INT NOT NULL PRIMARY KEY,
						EnemyName VARCHAR(150) NOT NULL,
						Description VARCHAR(550) DEFAULT NULL
						);

CREATE TABLE tblAuthor(
						AuthorId INT NOT NULL PRIMARY KEY,
						AuthorName VARCHAR(150) NOT NULL
						);

CREATE TABLE tblDoctor(
						DoctorId INT NOT NULL PRIMARY KEY,
						DoctorNumber INT NOT NULL,
						DoctorName VARCHAR(150) NOT NULL,
						BirthDate Date DEFAULT NULL,
						FirstEpisodeDate Date DEFAULT NULL,
						LastEpisodeDate Date DEFAULT NULL
						);

CREATE TABLE tblCompanion(
							CompanionId INT NOT NULL PRIMARY KEY,
							CompanionName VARCHAR(150) NOT NULL,
							WhoPlayed VARCHAR(150) NOT NULL
							);

CREATE TABLE tblEpisode (
							EpisodeId INT NOT NULL PRIMARY KEY,
							SeriesNumber INT NOT NULL,
							EpisodeNumber INT NOT NULL,
							EpisodeType VARCHAR(115) DEFAULT NULL,
							Title VARCHAR(150) NOT NULL,
							EpisodeDate Date DEFAULT NULL,
							AuthorId INT NOT NULL REFERENCES tblAuthor (AuthorId),
							DoctorId INT NOT NULL REFERENCES tblDoctor (DoctorId),
							Notes VARCHAR(650) DEFAULT NULL
							);

CREATE TABLE tblEpisodeCompanion(
									EpisodeCompanionId INT NOT NULL PRIMARY KEY,
									EpisodeId INT NOT NULL REFERENCES tblEpisode (EpisodeId),
									CompanionId INT NOT NULL REFERENCES tblCompanion (CompanionId)
									);

CREATE TABLE tblEpisodeEnemy (
								EpisodeEnemyId INT NOT NULL PRIMARY KEY,
								EpisodeId INT NOT NULL REFERENCES tblEpisode (EpisodeId),
								EnemyId INT NOT NULL REFERENCES tblEnemy (EnemyId)
								);