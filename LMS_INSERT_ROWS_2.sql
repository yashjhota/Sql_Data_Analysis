-- INSERTING VALUES TO EACH TABLE

-- Memebers 

INSERT INTO Members (MemberID, FirstName, LastName, Email, Phone) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '0987654321'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '1122334455'),
(4, 'Bob', 'Williams', 'bob.williams@example.com', '2233445566'),
(5, 'Charlie', 'Brown', 'charlie.brown@example.com', '6677889900'),
(6, 'David', 'Miller', 'david.miller@example.com', '3344556677'),
(7, 'Eva', 'Davis', 'eva.davis@example.com', '4455667788'),
(8, 'Frank', 'Wilson', 'frank.wilson@example.com', '5566778899'),
(9, 'Grace', 'Moore', 'grace.moore@example.com', '6677889900'),
(10, 'Hannah', 'Taylor', 'hannah.taylor@example.com', '7788990011');

-- Books

INSERT INTO Books (BookID, Title, Author, AvailableCopies) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 5),
(2, '1984', 'George Orwell', 3),
(3, 'To Kill a Mockingbird', 'Harper Lee', 4),
(4, 'Pride and Prejudice', 'Jane Austen', 6),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 2),
(6, 'Moby Dick', 'Herman Melville', 2),
(7, 'War and Peace', 'Leo Tolstoy', 3),
(8, 'The Odyssey', 'Homer', 4),
(9, 'Crime and Punishment', 'Fyodor Dostoevsky', 5),
(10, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 3);

-- Borrowings
INSERT INTO Borrowings (BorrowingID, MemberID, BookID, BorrowDate, ReturnDate) VALUES
(1, 1, 1, '2024-01-01', '2024-01-15'),
(2, 2, 2, '2024-02-01', '2024-02-15'),
(3, 3, 3, '2024-03-01', '2024-03-15'),
(4, 4, 4, '2024-04-01', '2024-04-15'),
(5, 5, 5, '2024-05-01', '2024-05-15'),
(6, 6, 6, '2024-06-01', '2024-06-15'),
(7, 7, 7, '2024-07-01', '2024-07-15'),
(8, 8, 8, '2024-08-01', '2024-08-15'),
(9, 9, 9, '2024-09-01', '2024-09-15'),
(10, 10, 10, '2024-10-01', '2024-10-15');

-- Authors

INSERT INTO Authors (AuthorID, Name) VALUES
(1, 'F. Scott Fitzgerald'),
(2, 'George Orwell'),
(3, 'Harper Lee'),
(4, 'Jane Austen'),
(5, 'J.D. Salinger'),
(6, 'Herman Melville'),
(7, 'Leo Tolstoy'),
(8, 'Homer'),
(9, 'Fyodor Dostoevsky'),
(10, 'Mark Twain');

-- BookAuthors

INSERT INTO BookAuthors (BookID, AuthorID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 9);

-- Categories

INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Fiction'),
(2, 'Science Fiction'),
(3, 'Biography'),
(4, 'History'),
(5, 'Mystery'),
(6, 'Fantasy'),
(7, 'Romance'),
(8, 'Thriller'),
(9, 'Non-Fiction'),
(10, 'Adventure');

-- Book catgeories

INSERT INTO BookCategories (BookID, CategoryID) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 7),
(5, 5),
(6, 10),
(7, 4),
(8, 6),
(9, 8),
(10, 9);

-- Reseravtions

INSERT INTO Reservations (ReservationID, MemberID, BookID, ReservationDate, Status) VALUES
(1, 1, 1, '2024-01-01', 'Reserved'),
(2, 2, 2, '2024-02-01', 'Reserved'),
(3, 3, 3, '2024-03-01', 'Reserved'),
(4, 4, 4, '2024-04-01', 'Reserved'),
(5, 5, 5, '2024-05-01', 'Reserved'),
(6, 6, 6, '2024-06-01', 'Reserved'),
(7, 7, 7, '2024-07-01', 'Reserved'),
(8, 8, 8, '2024-08-01', 'Reserved'),
(9, 9, 9, '2024-09-01', 'Reserved'),
(10, 10, 10, '2024-10-01', 'Reserved');

-- Fines 

INSERT INTO Fines (FineID, BorrowingID, Amount, Paid) VALUES
(1, 1, 5.00, FALSE),
(2, 2, 10.00, TRUE),
(3, 3, 7.50, FALSE),
(4, 4, 3.00, TRUE),
(5, 5, 8.00, FALSE),
(6, 6, 6.50, TRUE),
(7, 7, 4.00, FALSE),
(8, 8, 9.00, TRUE),
(9, 9, 2.50, FALSE),
(10, 10, 5.50, TRUE);

-- Publisher

INSERT INTO Publishers (PublisherID, PublisherName, ContactInfo) VALUES
(1, 'Penguin Random House', 'contact@penguinrandomhouse.com'),
(2, 'HarperCollins', 'contact@harpercollins.com'),
(3, 'Simon & Schuster', 'contact@simonandschuster.com'),
(4, 'Hachette Book Group', 'contact@hachettebookgroup.com'),
(5, 'Macmillan Publishers', 'contact@macmillan.com'),
(6, 'Scholastic', 'contact@scholastic.com'),
(7, 'Pearson', 'contact@pearson.com'),
(8, 'Wiley', 'contact@wiley.com'),
(9, 'Oxford University Press', 'contact@oup.com'),
(10, 'Cambridge University Press', 'contact@cambridge.org');

-- Book Publishers

INSERT INTO BookPublishers (BookID, PublisherID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Staff 

INSERT INTO Staff (StaffID, FirstName, LastName, Position, Email, Phone) VALUES
(1, 'Michael', 'Scott', 'Manager', 'michael.scott@example.com', '1234567890'),
(2, 'Dwight', 'Schrute', 'Assistant Manager', 'dwight.schrute@example.com', '0987654321'),
(3, 'Jim', 'Halpert', 'Sales', 'jim.halpert@example.com', '1122334455'),
(4, 'Pam', 'Beesly', 'Receptionist', 'pam.beesly@example.com', '2233445566'),
(5, 'Stanley', 'Hudson', 'Sales', 'stanley.hudson@example.com', '3344556677'),
(6, 'Phyllis', 'Vance', 'Sales', 'phyllis.vance@example.com', '4455667788'),
(7, 'Angela', 'Martin', 'Accountant', 'angela.martin@example.com', '5566778899'),
(8, 'Kevin', 'Malone', 'Accountant', 'kevin.malone@example.com', '6677889900'),
(9, 'Oscar', 'Martinez', 'Accountant', 'oscar.martinez@example.com', '7788990011'),
(10, 'Toby', 'Flenderson', 'HR', 'toby.flenderson@example.com', '8899001122');









