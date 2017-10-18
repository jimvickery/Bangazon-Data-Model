CREATE TABLE Departments
(
  name VARCHAR NOT NULL,
  super_employeeId INT NOT NULL,
  deptID INT NOT NULL,
  PRIMARY KEY (deptID)
);

CREATE TABLE Training_Programs
(
  start DATE NOT NULL,
  end DATE NOT NULL,
  max INT NOT NULL,
  name VARCHAR(30) NOT NULL,
  trainingID INT NOT NULL,
  PRIMARY KEY (trainingID)
);

CREATE TABLE Product_Types
(
  typeID INT NOT NULL,
  Name INT NOT NULL,
  PRIMARY KEY (typeID)
);

CREATE TABLE Orders
(
  orderID INT NOT NULL,
  ProdID INT NOT NULL,
  PRIMARY KEY (orderID)
);

CREATE TABLE Customers
(
  activity240 VARCHAR(30) NOT NULL,
  last VARCHAR NOT NULL,
  acctDate DATE NOT NULL,
  first INT NOT NULL,
  custID INT NOT NULL,
  orderID INT NOT NULL,
  typeID INT NOT NULL,
  PRIMARY KEY (custID),
  FOREIGN KEY (orderID) REFERENCES Orders(orderID),
  FOREIGN KEY (typeID) REFERENCES Product_Types(typeID)
);

CREATE TABLE Paymentt_Types
(
  type VARCHAR(30) NOT NULL,
  accNumber INT NOT NULL,
  payID INT NOT NULL,
  custID INT NOT NULL,
  FOREIGN KEY (custID) REFERENCES Customers(custID)
);

CREATE TABLE Products
(
  productID INT NOT NULL,
  typeID INT NOT NULL,
  price INT NOT NULL,
  title VARCHAR(30) NOT NULL,
  description VARCHAR(30) NOT NULL,
  custID INT NOT NULL,
  FOREIGN KEY (custID) REFERENCES Customers(custID)
);

CREATE TABLE Employees
(
  first VARCHAR(18) NOT NULL,
  last VARCHAR(18) NOT NULL,
  trainingID INT NOT NULL,
  employeeID INT NOT NULL,
  deptID INT NOT NULL,
  trainingID INT NOT NULL,
  computerID INT NOT NULL,
  PRIMARY KEY (employeeID),
  FOREIGN KEY (deptID) REFERENCES Departments(deptID),
  FOREIGN KEY (trainingID) REFERENCES Training_Programs(trainingID),
  FOREIGN KEY (computerID) REFERENCES Computers(computerID)
);

CREATE TABLE Computers
(
  start DATE NOT NULL,
  computerID INT NOT NULL,
  end DATE NOT NULL,
  employeeID INT NOT NULL,
  PRIMARY KEY (computerID),
  FOREIGN KEY (employeeID) REFERENCES Employees(employeeID)
);