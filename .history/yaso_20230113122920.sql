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

CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(255) NOT NULL,
    Supplier_Address VARCHAR(255),
    Supplier_Phone VARCHAR(255)
);

CREATE TABLE Purchase_Orders (
    PO_ID INT PRIMARY KEY,
    Engineer_ID INT NOT NULL,
    Supplier_ID INT NOT NULL,
    Part_ID INT NOT NULL,
    PO_Date DATE NOT NULL,
    Quantity INT NOT NULL,
    Delivery_Date DATE,
    FOREIGN KEY (Engineer_ID) REFERENCES Engineers(Engineer_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID),
    FOREIGN KEY (Part_ID) REFERENCES Non_Standard_Parts(Part_ID)
);

CREATE TABLE Delivery_Notes (
    DN_ID INT PRIMARY KEY,
    PO_ID INT NOT NULL,
    DN_Date DATE NOT NULL,
    Quantity_Received INT NOT NULL,
    FOREIGN KEY (PO_ID) REFERENCES Purchase_Orders(PO_ID)
);

CREATE TABLE Stores_Requisition_Forms (
    SRF_ID INT PRIMARY KEY,
    Engineer_ID INT,
    Part_ID INT,
    SRF_Date DATE,
    Quantity_Requested INT,
    Quantity_Issued INT,
    FOREIGN KEY (Engineer_ID) REFERENCES Engineers(Engineer_ID),
    FOREIGN KEY (Part_ID) REFERENCES Non_Standard_Parts(Part_ID)
);

CREATE TABLE Box_Files (
    Box_ID INT PRIMARY KEY,
    PO_ID INT,
    SRF_ID INT,
    FOREIGN KEY (PO_ID) REFERENCES Purchase_Orders(PO_ID),
    FOREIGN KEY (SRF_ID) REFERENCES Stores_Requisition_Forms(SRF_ID)
);
