CREATE TABLE Products (
  Name VARCHAR2(1000 CHAR) NOT NULL,
  Category VARCHAR2(1000 CHAR),
  CONSTRAINT PK_Product PRIMARY KEY (Name)
);

Create Table Products_price_history (
  Name VARCHAR2(1000 CHAR) NOT NULL,
  Price int NOT NULL,
  Start_date TIMESTAMP NOT NULL,
  End_date TIMESTAMP,
  CONSTRAINT FK_ProductName FOREIGN KEY (Name)
  REFERENCES Products(Name)
);
