# Doctor_Who

This repository contains my implementation of a SQL Server Database which contains data (such as episode list, doctors list, enemies list, companions list, authors list, and much more) about the Doctor Who series. This database was created in accordance with the rules, requirements, and constriants set forth by this project and which can be found later in this README file. Furthermore, it is worth mentioning that this Project was designed to introduce interns to the basics of creating Relational Databases using SQL Server (and SSMS) as well as the basics of writing queries in T-SQL. In addition to introducing interns to the basics of SQL Server and T-SQL, this project's requirements go even further than just the basics to include some of the more advanced T-SQL topics and techniques such as: Views, User-Defined Stored Procedures, User-Defined Functions, DML, DQL, DDL, Maintaining Integrity with Transactions, and much more. While not all of the previously mentioned techniques/functionalities were deployed in my implementation of this project, most were utilized in order to create the database, create the objects, populate objects accordingly, and define the constraints required to complete this project. The techniques that were employed proved to be invaluable when driving the design of the database and its elements for I was able to finish the project with no considerable correctly, and with no measurable difficulties. Finally, please note that all the data used to populate this database is in the Data_Files folder of this repository whereas all the scripts written to create the database and its objects, populate the database, and manipulate it as needed are in the Script-Files folder of this repository.

As part of my internship as a Backend Development Intern at Foothill Technology Solutions, I was asked to complete a task-based training program. This training program involves taking online courses to better hone and improve an intern's programming skills and work with development teams to get a taste of what a career in software development is like all while performing tasks (doing assigned projects) that help deepen an intern's understanding of the material and the training they are receiving.

For my fourth task, I was asked to create an extensive Doctor Who relational database, using T-SQL, that stores various information about the series such as the Doctors, Companions, Enemies, Writers, episode list, character appearances, and much more. The database has to also follow a set of contraints and fulfill a number of requirements that can be found later in this README file. This exercise is meant to help interns become familiar with what creating, populating, and maintaining a database over time might look like, become familiar with the basics of SQL Server and T-SQL programming (in addition to more advanced topics and techniques such as Views, User-Defined Functions, Stored Procedures, Transactions, etc.), as well as making interns become more comfortable employing the skills that they learn during their training at the company.

Here are the instructions I received for this project:

Before you start:
1. Use SQL Server 2016 or above.
2. Make sure to create a .sql file for each requirement below.
3. Follow GIT best practices you learned to push your script files.

Requirements:
1. Create a DB named DoctorWho.

2. Write queries to create the tables, keys, relationships and constraints as you see fit.

3. Write queries to insert at least 5 records in each table.

4. Write a query to update the the episode name to {ORIGINAL_EPISODE_NAME}_CANCELLED for only the episodes with zero doctor appearances.

5. Write a query to delete all companions who didn't appear on an episode.

6. Create a function called fnCompanions to printout the companions names for a given episode: Input: EpisodeId and Output: Companion 1 Name, Companion 2 Name, Companion 3 Name, etc.

7. Create a function called fnEnemies to printout the enemies names for a given episode: Input: EpisodeId and Output: Enemy 1 Name, Enemy 2 Name, Enemy 3 Name, etc.

8. Create a SQL view called viewEpisodes to list out all episodes, include: Author Name, Doctor Name, Companions, Enemies.

9. Create a stored procedure called spSummariseEpisodes to show: The 3 most frequently-appearing companions; then separately the 3 most frequently-appearing enemies.

My repository is divided into the following folders and sub-folders:
1. The "Data_Files" Folder: contains all the CSV files used to populate the databse and its objects with various information.
2. The "Script_Files" Folder: this folder contains the following sub-folders:
    a. Create_DB_and_Tables: contains a backup file for the database as well as the script to create the tables making up this database.
    b. Populate_Tables_ contains all the scripts required to populate each one of the tables.
    c. Queries_and_Tasks: contains scripts implementing each one of the 9 requirements above starting from requirement number 4.

Thanks,

Ayham R.
