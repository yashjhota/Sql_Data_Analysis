-- This Data is Generated Randomly To perform Analysis Using Complex Queries.

CREATE DATABASE LMS;

USE LMS ;

-- Members Table

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

-- Books Table

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    AvailableCopies INT
);

-- Borrowings Table

CREATE TABLE Borrowings (
    BorrowingID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Authors Table

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- BookAuthors Table
-- This table links books to their authors, 
-- useful if a book can have multiple authors.

CREATE TABLE BookAuthors (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);


-- Category Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

-- BookCategory Table

CREATE TABLE BookCategories (
    BookID INT,
    CategoryID INT,
    PRIMARY KEY (BookID, CategoryID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Reservation Table

CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    ReservationDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Fines Table

CREATE TABLE Fines (
    FineID INT PRIMARY KEY,
    BorrowingID INT,
    Amount DECIMAL(10, 2),
    Paid BOOLEAN,
    FOREIGN KEY (BorrowingID) REFERENCES Borrowings(BorrowingID)
);

-- Publisher Table

CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(100),
    ContactInfo VARCHAR(100)
);

-- BookPublisher Table

CREATE TABLE BookPublishers (
    BookID INT,
    PublisherID INT,
    PRIMARY KEY (BookID, PublisherID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

-- Staff Table 

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);



