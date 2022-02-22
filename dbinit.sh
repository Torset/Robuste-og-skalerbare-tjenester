CREATE DATABASE bf;
CREATE USER t2user;
GRANT ALL ON DATABASE bf TO t2user;

USE bf;
CREATE table users ( userID INT PRIMARY KEY DEFAULT unique_rowid(), name STRING(50), picture STRING(300), status STRING(10), posts INT, comments INT, lastPostDate TIMESTAMP DEFAULT NOW(), createDate TIMESTAMP DEFAULT NOW());

CREATE table posts ( postID INT PRIMARY KEY DEFAULT unique_rowid(), userID INT, text STRING(300), name STRING(150), postDate TIMESTAMP DEFAULT NOW());

CREATE table comments ( commentID INT PRIMARY KEY DEFAULT unique_rowid(), postID INT, userID INT, text STRING(300),  postDate TIMESTAMP DEFAULT NOW());

CREATE table pictures ( pictureID STRING(300), picture BYTES );
