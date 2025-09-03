--list all the bookname
SELECT*FROM booktable
--find ovredue books
SELECT b.bookids, b.Title, m.MemberID, m.MemberName
FROM borrowedbook bb
JOIN booktable b 
ON bb.bookids = b.bookids
JOIN MemberTable m 
ON bb.memberid = m.memberid
WHERE bb.ReturnDate IS NULL
--most borrowed books
SELECT TOP 1 b.bookids, b.title, COUNT(bb.bookids) AS BorrowCount
FROM borrowedbook bb
JOIN BookTable b ON bb.bookids = b.bookids
GROUP BY b.bookids, b.title
ORDER BY BorrowCount DESC;
--members with most borrowings
SELECT top 1 m.memberid, m.membername, COUNT(bb.memberid) AS BorrowCount
FROM  borrowedbook bb
JOIN membertable m ON bb.memberid = m.memberid
GROUP BY m.memberid, m.membername
ORDER BY BorrowCount DESC;
--available books by genre

SELECT genre, SUM(availablecopies) AS TotalAvailableCopies
FROM booktable
GROUP BY genre;

--members who have borrowed more than 2 books
SELECT m.memberid, m.membername, COUNT(bb.bookids) AS BorrowCount
FROM borrowedbook bb
JOIN membertable m ON bb.memberid = m.memberid
GROUP BY m.memberid, m.membername
HAVING COUNT(bb.bookids) > 2;
--books borrowed by member with memberid103
SELECT b.bookids, b.title
FROM borrowedbook bb
JOIN booktable b ON bb.bookids = b.bookids
WHERE bb.memberid = 103
--member with no returns
SELECT m.memberid, m.membername
FROM membertable m
LEFT JOIN borrowedbook bb ON m.memberid = bb.memberid
WHERE bb.returndate IS NULL;












