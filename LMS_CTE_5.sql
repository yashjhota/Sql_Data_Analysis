-- 1 CTE to find the most borrowed books:

WITH MostBorrowedBooks AS (
    SELECT b.Title, COUNT(br.BorrowingID) AS BorrowCount
    FROM Borrowings br
    JOIN Books b ON br.BookID = b.BookID
    GROUP BY b.Title
)
SELECT * FROM MostBorrowedBooks
ORDER BY BorrowCount DESC;

--  2 CTE to list overdue bookS 

WITH OverdueBooks AS (
    SELECT m.FirstName, b.Title, br.ReturnDate
    FROM Borrowings br
    JOIN Members m ON br.MemberID = m.MemberID
    JOIN Books b ON br.BookID = b.BookID
    WHERE br.ReturnDate < '2024-09-05'
)
SELECT * FROM OverdueBooks;

-- 3 Create View to list all books with their authors and categories:

CREATE VIEW BooksAuthorsCategories AS
SELECT b.Title, a.Name AS AuthorName, c.CategoryName
FROM Books b
JOIN BookAuthors ba ON b.BookID = ba.BookID
JOIN Authors a ON ba.AuthorID = a.AuthorID
JOIN BookCategories bc ON b.BookID = bc.BookID
JOIN Categories c ON bc.CategoryID = c.CategoryID;

SELECT * FROM BooksAuthorsCategories;


