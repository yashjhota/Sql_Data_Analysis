-- Analyzing LMS

-- Basic Queries

-- 1 List all members in the library

SELECT * FROM Members;

-- 2 List all books available in the library.

SELECT * FROM Books;

-- 3 Find the details of a specific book Which Have title of 1984.

SELECT * FROM Books WHERE Title = '1984';

-- 4 List all borrowings made by a specific member.

SELECT * FROM Borrowings WHERE MemberID = 5;

-- 5 Count the total number of books available in the library.

SELECT COUNT(*) AS TotalBooks FROM Books;

-- Intermediate Queries

-- 6 List all books borrowed by a specific member along with the borrow date.

SELECT b.Title, br.BorrowDate
FROM Borrowings br
JOIN Books b ON br.BookID = b.BookID
WHERE br.MemberID = 1;

-- 7 Find the total number of books borrowed by each member

SELECT CONCAT(m.FirstName,' ',m.LastName) AS Name, COUNT(br.BorrowingID) AS TotalBorrowed
FROM Members m
JOIN Borrowings br ON m.MemberID = br.MemberID
GROUP BY m.MemberID;

-- 8 List all overdue books (assuming today’s date is ‘2024-03-05’).

SELECT m.FirstName, m.LastName, b.Title, br.ReturnDate
FROM Borrowings br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID
WHERE br.ReturnDate < '2024-03-05';

-- 9 Find the most borrowed book.

SELECT b.Title, COUNT(br.BorrowingID) AS BorrowCount
FROM Borrowings br
JOIN Books b ON br.BookID = b.BookID
GROUP BY b.BookID
ORDER BY BorrowCount DESC
LIMIT 1;

-- 10 List all books along with their categories.

SELECT b.Title, c.CategoryName
FROM BookCategories bc
JOIN Books b ON bc.BookID = b.BookID
JOIN Categories c ON bc.CategoryID = c.CategoryID;

-- Advanced Queries

-- 11 Find the total fine amount for each member. 

SELECT m.FirstName, SUM(f.Amount) AS TotalFines
FROM Fines f
JOIN Borrowings br ON f.BorrowingID = br.BorrowingID
JOIN Members m ON br.MemberID = m.MemberID
GROUP BY m.MemberID;

-- 12 List all books that have never been borrowed

SELECT b.Title
FROM Books b
LEFT JOIN Borrowings br ON b.BookID = br.BookID
WHERE br.BorrowingID IS NULL;

-- 13 Find the average number of books borrowed per member.

SELECT AVG(BorrowCount) AS AverageBorrowed
FROM (
    SELECT COUNT(br.BorrowingID) AS BorrowCount
    FROM Borrowings br
    GROUP BY br.MemberID
) AS BorrowCounts;

-- 14 Find the most popular category of books based on borrowings.

SELECT c.CategoryName, COUNT(br.BorrowingID) AS BorrowCount
FROM Borrowings br
JOIN BookCategories bc ON br.BookID = bc.BookID
JOIN Categories c ON bc.CategoryID = c.CategoryID
GROUP BY c.CategoryID
ORDER BY BorrowCount DESC
LIMIT 1;








