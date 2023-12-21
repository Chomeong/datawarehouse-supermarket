CREATE SCHEMA TUGAS_DW;

CREATE TABLE DATE (
	ID_DATE INT NOT NULL,
	DATE INT NOT NULL,
	CONSTRAINT PK_TIME PRIMARY KEY (ID_DATE)
);

CREATE TABLE PRODUCT (
	ID_PRODUCT INT NOT NULL,
	CATEGORY VARCHAR(30) NOT NULL,
	SUB_CATEGORY VARCHAR(30) NOT NULL,
	CONSTRAINT PK_PRODUCT PRIMARY KEY (ID_PRODUCT)
);

CREATE TABLE LOCATION (
	ID_LOCATION INT NOT NULL,
	COUNTRY VARCHAR(20) NOT NULL,
	STATE VARCHAR(30) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	CONSTRAINT PK_LOCATION PRIMARY KEY (ID_LOCATION)
);

CREATE TABLE NAME(
	ID_NAME INT NOT NULL,
	CUSTOMER_NAME VARCHAR(30) NOT NULL,
	CONSTRAINT PK_NAME PRIMARY KEY (ID_SHIPMENT)
);

CREATE TABLE QUANTITY (
	ID_QUANTITY INT NOT NULL,
	QUANTITY INT NOT NULL,
	CONSTRAINT PK_LOCATION PRIMARY KEY (ID_QUANTITY)
);

CREATE TABLE SALES (
	ID_SALES INT NOT NULL,
	SALES INT NOT NULL,
	CONSTRAINT PK_LOCATION PRIMARY KEY (ID_SALES)
);

CREATE TABLE FACT (
	ID_DATE INT,
	ID_PRODUCT INT,
	ID_LOCATION INT,
	ID_NAME INT,
	ID_QUANTITY INT,
ID_SALES INT,
AVERAGE INT
	CONSTRAINT PK_FAKTA PRIMARY KEY (ID_DATE, ID_PRODUCT, ID_LOCATION, ID_NAME, ID_QUANTITY, ID_SALES)
);

ALTER TABLE FACT
ADD FOREIGN KEY (ID_DATE)
REFERENCES TIME(ID_DATE);

ALTER TABLE FACT
ADD FOREIGN KEY (ID_PRODUCT)
REFERENCES PRODUCT(ID_PRODUCT);

ALTER TABLE FACT
ADD FOREIGN KEY (ID_LOCATION)
REFERENCES LOCATION(ID_LOCATION);

ALTER TABLE FACT
ADD FOREIGN KEY (ID_NAME)
REFERENCES NAME(ID_NAME);

ALTER TABLE FACT
ADD FOREIGN KEY (ID_QUANTITY)
REFERENCES QUANTITY(ID_QUANTITY);

ALTER TABLE FACT
ADD FOREIGN KEY (ID_SALES)
REFERENCES SALES(ID_SALES);