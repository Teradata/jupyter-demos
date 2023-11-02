-- Create the Bank table
CREATE TABLE Customer (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    AccountNumber VARCHAR(20),
    AccountType VARCHAR(20),
    Balance DECIMAL(10, 2),
    BranchID INT,
    AccountStatus VARCHAR(20),
    CreditScore INT,
    Income DECIMAL(10, 2)
);