DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS enclosure;
DROP TABLE IF EXISTS animals;

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosureId INT
);

CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN
);

CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE assignment(
    id SERIAL PRIMARY KEY,
    employeeId INT,
    enclosureId INT,
    day VARCHAR(255)
);

INSERT INTO animals (name, type, age, enclosureId) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Pedro', 'Crocodile', 20, 2);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Bella', 'Parrot', 30, 3);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Kenny', 'Panda', 10, 4);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Jerome', 'Giraffe', 40, 5);

INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ("Big cat field", 20, false);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ("reptile enclosure", 30, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ("bird cage", 15, false);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ("panda enclosure", 10, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ("giraffe enclosure", 25, false);

INSERT INTO staff (name, employeeNumber) VALUES ('Captain risk', 12345);
INSERT INTO staff (name, employeeNumber) VALUES ('Ben', 24689);
INSERT INTO staff (name, employeeNumber) VALUES ('Sally', 13579);
INSERT INTO staff (name, employeeNumber) VALUES ('Emily', 14739);
INSERT INTO staff (name, employeeNumber) VALUES ('Michael', 85382);

INSERT INTO assignment (employeeId, enclosureId, day) VALUES (1, 5, 'Monday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (2, 4, 'Tuesday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (3, 3, 'Wednesday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (4, 2, 'Thursday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (5, 1, 'Friday');