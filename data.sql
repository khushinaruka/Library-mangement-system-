--sample data for booktable
INSERT into booktable(title,author,genre,availablecopies)VALUES
('The Alchemist','PauloCoehlo','fiction',4),
('atomic habits','james clear','selfhelp',2),
('to kill a mockingbird','harper lee','classic',5),
('harrypotter','jk rowling','fantasy',3),
('think like a monk','jay shetty','self help',9)
  --sample data for membertable
INSERT into membertable(memberid,membername,meembershipdate,email)VALUES
(101,'aarav sharma','2023-01-15','aaravsharma@gmail.com'),
(102,'khushi','2023-02-10','khushi@gmail.com'),
(103,'rohan','2023-03-05','rohan@gmail.com'),
(104,'simran','2023-03-22','simran@gmail.com'),
(105,'priya','2023-04-01','priya@gmail.com')
--sample data for borrowedbooks
INSERT into borrowedbook(borrowedid,memberid,bookids,borrowdate,returndate) VALUES
(201,101,1,'2023-04-02','2023-04-12'),
(202,102,2,'2023-04-05','2023-04-15'),
(203,103,3,'2023-04-06','2023-04-20'),
(204,104,4,'2023-04-07','2023-04-14'),
(205,105,5,'2023-04-08','2023-04-18')
