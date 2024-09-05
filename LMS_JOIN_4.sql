-- COMPLEX JOIN QUERIES 

-- 1 Find all members who have borrowed books written by George.

SELECT DISTINCT m.FirstName
FROM Members m
JOIN Borrowings br ON m.MemberID = br.MemberID
JOIN Books b ON br.BookID = b.BookID
JOIN BookAuthors ba ON b.BookID = ba.BookID
JOIN Authors a ON ba.AuthorID = a.AuthorID
WHERE a.Name like 'George%';

-- 2. List all books along with their authors and categories.

SELECT b.Title, a.Name AS AuthorName, c.CategoryName
FROM Books b
JOIN BookAuthors ba ON b.BookID = ba.BookID
JOIN Authors a ON ba.AuthorID = a.AuthorID
JOIN BookCategories bc ON b.BookID = bc.BookID
JOIN Categories c ON bc.CategoryID = c.CategoryID;

-- 3 Find the total number of books borrowed by each member, 
-- along with the total fine amount they owe.

SELECT m.FirstName, COUNT(br.BorrowingID) AS Borrowed, COALESCE(SUM(f.Amount), 0) AS TotalFines
FROM Members m
LEFT JOIN Borrowings br ON m.MemberID = br.MemberID
LEFT JOIN Fines f ON br.BorrowingID = f.BorrowingID
GROUP BY m.MemberID;

