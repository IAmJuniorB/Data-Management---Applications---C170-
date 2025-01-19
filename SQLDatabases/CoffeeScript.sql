CREATE TABLE CoffeeShop (
    ShopID INT,
    ShopName VARCHAR(50),
    City VARCHAR(50),
    State CHAR(2),
    PRIMARY KEY (ShopID)
);
CREATE TABLE Employee (
    EmployeeID INT,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    HireDate DATE,
    JobTitle VARCHAR(30),
    ShopID INT,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (ShopID)
        REFERENCES CoffeeShop (ShopID)
);
CREATE TABLE Supplier (
    SupplierID INT,
    CompanyName VARCHAR(50),
    Country VARCHAR(30),
    SalesContactName VARCHAR(60),
    Email VARCHAR(50) NOT NULL,
    PRIMARY KEY (SupplierID)
);
CREATE TABLE Coffee (
    CoffeeID INT,
    ShopID INT,
    SupplierID INT,
    CoffeeName VARCHAR(30),
    PricePerPound DECIMAL(5 , 2 ),
    PRIMARY KEY (CoffeeID),
    FOREIGN KEY (ShopID)
        REFERENCES CoffeShop (ShopID),
    FOREIGN KEY (SupplierID)
        REFERENCES Supplier (SupplierID)
);