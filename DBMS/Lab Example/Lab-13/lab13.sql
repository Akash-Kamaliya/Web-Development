-- Create Author table
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

-- Create Publisher table
CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(100) NOT NULL UNIQUE,
    City VARCHAR(50) NOT NULL
);

-- Create Book table
CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    AuthorID INT NOT NULL,
    PublisherID INT NOT NULL,
    Price DECIMAL(8,2) NOT NULL,
    PublicationYear INT NOT NULL,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

-- Insert data into Author
INSERT INTO Author VALUES
(1, 'Chetan Bhagat', 'India'),
(2, 'Arundhati Roy', 'India'),
(3, 'Amish Tripathi', 'India'),
(4, 'Ruskin Bond', 'India'),
(5, 'Jhumpa Lahiri', 'India'),
(6, 'Paulo Coelho', 'Brazil'),
(7, 'Sudha Murty', 'India');

-- Insert data into Publisher
INSERT INTO Publisher VALUES
(1, 'Rupa Publications', 'New Delhi'),
(2, 'Penguin India', 'Gurugram'),
(3, 'HarperCollins India', 'Noida'),
(4, 'Aleph Book Company', 'New Delhi');

-- Insert data into Book
INSERT INTO Book VALUES
(101, 'Five Point Someone', 1, 1, 250.00, 2004),
(102, 'The God of Small Things', 2, 2, 350.00, 1997),
(103, 'Immortals of Meluha', 3, 3, 300.00, 2010),
(104, 'The Blue Umbrella', 4, 1, 180.00, 1980),
(105, 'The Lowland', 5, 2, 400.00, 2013),
(106, 'Revolution 2020', 1, 1, 275.00, 2011),
(107, 'Sita: Warrior of Mithila', 3, 3, 320.00, 2017),
(108, 'The Room on the Roof', 4, 4, 200.00, 1956);

-- 1. List all books with their authors.
SELECT B.Title, A.AuthorName
FROM Book B
JOIN Author A ON B.AuthorID = A.AuthorID;

-- 2. List all books with their publishers.
SELECT B.Title, P.PublisherName
FROM Book B
JOIN Publisher P ON B.PublisherID = P.PublisherID;

-- 3. List all books with their authors and publishers.
SELECT B.Title, A.AuthorName, P.PublisherName
FROM Book B
JOIN Author A ON B.AuthorID = A.AuthorID
JOIN Publisher P ON B.PublisherID = P.PublisherID;

-- 4. List all books published after 2010 with their authors and publisher and price.
SELECT B.Title, A.AuthorName, P.PublisherName, B.Price
FROM Book B
JOIN Author A ON B.AuthorID = A.AuthorID
JOIN Publisher P ON B.PublisherID = P.PublisherID
WHERE B.PublicationYear > 2010;

-- 5. List all authors and the number of books they have written.
SELECT A.AuthorName, COUNT(B.BookID) AS NumBooks
FROM Author A
LEFT JOIN Book B ON A.AuthorID = B.AuthorID
GROUP BY A.AuthorName;

-- 6. List all publishers and the total price of books they have published.
SELECT P.PublisherName, SUM(B.Price) AS TotalPrice
FROM Publisher P
LEFT JOIN Book B ON P.PublisherID = B.PublisherID
GROUP BY P.PublisherName;

-- 7. List authors who have not written any books.
SELECT A.AuthorName
FROM Author A
LEFT JOIN Book B ON A.AuthorID = B.AuthorID
WHERE B.BookID IS NULL;

-- 8. Display total number of Books and Average Price of every Author.
SELECT A.AuthorName, COUNT(B.BookID) AS TotalBooks, AVG(B.Price) AS AvgPrice
FROM Author A
LEFT JOIN Book B ON A.AuthorID = B.AuthorID
GROUP BY A.AuthorName;

-- 9. List each publisher along with the total number of books they have published, sorted from highest to lowest.
SELECT P.PublisherName, COUNT(B.BookID) AS NumBooks
FROM Publisher P
LEFT JOIN Book B ON P.PublisherID = B.PublisherID
GROUP BY P.PublisherName
ORDER BY NumBooks DESC;

-- 10. Display number of books published each year
SELECT PublicationYear, COUNT(BookID) AS NumBooks
FROM Book
GROUP BY PublicationYear
ORDER BY PublicationYear;

-- Part B: 1. List the publishers whose total book prices exceed 500, ordered by the total price.
SELECT P.PublisherName, SUM(B.Price) AS TotalPrice
FROM Publisher P
JOIN Book B ON P.PublisherID = B.PublisherID
GROUP BY P.PublisherName
HAVING SUM(B.Price) > 500
ORDER BY TotalPrice DESC;

-- Part B: 2. List most expensive book for each author, sort it with the highest price.
SELECT A.AuthorName, B.Title, B.Price
FROM Book B
JOIN Author A ON B.AuthorID = A.AuthorID
WHERE (B.AuthorID, B.Price) IN (
    SELECT AuthorID, MAX(Price)
    FROM Book
    GROUP BY AuthorID
)
ORDER BY B.Price DESC;