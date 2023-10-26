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