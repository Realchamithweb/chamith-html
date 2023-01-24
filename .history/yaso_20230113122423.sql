CREATE TABLE Engineers (
    Engineer_ID INT PRIMARY KEY,
    Engineer_Name VARCHAR(255) NOT NULL,
    Engineer_Email VARCHAR(255) UNIQUE
);

CREATE TABLE Non_Standard_Parts (
    Part_ID INT PRIMARY KEY,
    Part_Name VARCHAR(255) NOT NULL,
    Part_Description VARCHAR(255),
    Part_Unit_Price DECIMAL(10,2)
);
