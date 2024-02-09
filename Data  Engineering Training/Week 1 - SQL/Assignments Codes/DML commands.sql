USE pet_adoption;

CREATE TABLE animals (
    id int NOT NULL,
    name VARCHAR(255), 
    breed VARCHAR(255), 
    color VARCHAR(255), 
    gender VARCHAR(255), 
    status INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE adoptions (
    animal_id INTEGER NOT NULL,
    name VARCHAR(255),
    contact VARCHAR(255),
    date TIMESTAMP,
    FOREIGN KEY (animal_id) REFERENCES animals(id)
);

SHOW TABLES;

SHOW COLUMNS FROM animals;

INSERT INTO animals (id, name, breed, color, gender, status) VALUES (1, 'Bellyflop', 'Beagle', 'Brown', 'Male', 0);

drop table animals;
drop table adoptions;


