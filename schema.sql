create TABLE booktable(
  bookids INT IDENTITY(1,1) PRIMARY KEY,
  title VARCHAR(50),
  author VARCHAR(50),
  genre VARCHAR(50),
  availablecopies INT
)
CREATE TABLE membertable(
  memberid INT PRIMARY KEY,
  membername VARCHAR(50),
  meembershipdate DATE,
  email VARCHAR(50)
)
CREATE TABLE borrowedbook(
  borrowedid INT PRIMARY KEY,
  memberid INT,
  bookids INT,
  borrowdate date,
  returndate date
)
