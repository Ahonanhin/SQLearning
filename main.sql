PRAGMA foreign_keys = ON; /*Turns foreign key features/constraints off*/


/*instructors table creation*/
/*primary key of relation*/
/*a foreign key for another relation*/
/* min enroment  must be 10)*/
CREATE TABLE Instructors(
  faculty_id TEXT, 
  name TEXT, 
  office TEXT,
  PRIMARY KEY(faculty_id)
  );


/*create a table of courses*/
CREATE TABLE Course (
  code TEXT,
  semester TEXT,
  enrolment TEXT,
  room TEXT, 
  PRIMARY KEY(code, semester)
);

-- /*Constraints: 
--   - They cannot be null
--   - They must be unique
--   - Primary keys must be unique and not mull
--   - Foreign keys must exist in another table
-- */

-- /*Inserting information*/
-- SELECT "-------------INSERTING";
-- INSERT INTO Instructors(faculty_id, name, office)
-- VALUES
--   (0000001, "Jimmy Hendricks", "AA109"),
--   (0000002, "Diego Maradona", "FC010");

-- insert into Course(code, semester, enrolment, room)
-- values 
--   ("FUTA01", "Fall", 24, "BH100"),
--   ("JAZ100", "Winter", 50,"PC201");

-- SELECT * FROM Instructors;