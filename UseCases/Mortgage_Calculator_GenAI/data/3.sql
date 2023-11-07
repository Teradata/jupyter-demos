-- Insert sample data into the Interest table
INSERT INTO Interest (ID, MinCreditScore, MaxCreditScore, InterestRate) VALUES (1,300, 579, 4.8);
INSERT INTO Interest (ID, MinCreditScore, MaxCreditScore, InterestRate) VALUES (2,580,669, 4.3);
INSERT INTO Interest (ID, MinCreditScore, MaxCreditScore, InterestRate) VALUES (3,670, 739, 3.9);
INSERT INTO Interest (ID, MinCreditScore, MaxCreditScore, InterestRate) VALUES (4,740, 799, 3.5);
INSERT INTO Interest (ID, MinCreditScore, MaxCreditScore, InterestRate) VALUES (5,800,850, 3.0);


-- Insert sample data into the Customer table
INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Address, City, State, Country, Email, PhoneNumber, AccountNumber, AccountType, Balance, BranchID, AccountStatus, CreditScore, Income)
VALUES (1, 'John', 'Doe', '1990-04-15', 'M', '123 Main St', 'Anytown', 'CA', 'USA', 'john.doe@example.com', '123-456-7890', 'ACCT123456', 'Savings', 5000.00, 1, 'Active', 720, 60000.00);
INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Address, City, State, Country, Email, PhoneNumber, AccountNumber, AccountType, Balance, BranchID, AccountStatus, CreditScore, Income)
VALUES (2, 'Jane', 'Smith', '1985-09-22', 'F', '456 Elm St', 'Othertown', 'NY', 'USA', 'jane.smith@example.com', '987-654-3210', 'ACCT987654', 'Checking', 3500.50, 2, 'Active', 680, 55000.00);
INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Address, City, State, Country, Email, PhoneNumber, AccountNumber, AccountType, Balance, BranchID, AccountStatus, CreditScore, Income)
VALUES (3, 'Mike', 'Johnson', '1992-12-05', 'M', '789 Oak St', 'Somewhere', 'TX', 'USA', 'mike.johnson@example.com', '555-123-7890', 'ACCT555123', 'Savings', 6200.75, 1, 'Active', 750, 75000.00);
INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Address, City, State, Country, Email, PhoneNumber, AccountNumber, AccountType, Balance, BranchID, AccountStatus, CreditScore, Income)
VALUES (4, 'Sarah', 'Wilson', '1980-07-10', 'F', '101 Pine St', 'Anothercity', 'FL', 'USA', 'sarah.wilson@example.com', '321-555-9876', 'ACCT321555', 'Checking', 9000.25, 3, 'Active', 800, 80000.00);
INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Address, City, State, Country, Email, PhoneNumber, AccountNumber, AccountType, Balance, BranchID, AccountStatus, CreditScore, Income)
VALUES (5, 'David', 'Lee', '1978-03-30', 'M', '222 Birch St', 'Yetanothercity', 'GA', 'USA', 'david.lee@example.com', '111-222-3333', 'ACCT111222', 'Savings', 4200.30, 2, 'Active', 700, 70000.00);