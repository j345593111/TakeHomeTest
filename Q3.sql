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

-- testing data for Products
INSERT INTO Products VALUES ('AAA', 'testing');
INSERT INTO Products VALUES ('BBB', 'testing');

-- testing data for Products_price_history
INSERT INTO Products_price_history VALUES ('AAA', 100, TO_TIMESTAMP('2022-02-09 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2022-02-10 07:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Products_price_history VALUES ('AAA', 150, TO_TIMESTAMP('2022-02-10 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO Products_price_history VALUES ('BBB', 200, TO_TIMESTAMP('2022-03-02 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), null);

--query sql
SELECT p.Name, p.Category, h.Price, h.Start_date, h.End_date
FROM Products p
INNER JOIN Products_price_history h
ON p.Name=h.Name
ORDER BY h.Start_date
