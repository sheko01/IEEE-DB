CREATE TABLE Users (
    userID SERIAL PRIMARY KEY,
    userName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(256) NOT NULL,
    committee VARCHAR(100),
    permissions VARCHAR(100)
);

CREATE TABLE Posts (
    postID SERIAL PRIMARY KEY,
    userID INT REFERENCES Users(userID),
    caption TEXT NOT NULL,
    content TEXT NOT NULL,
    type VARCHAR(50) NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Comments (
    commentID SERIAL PRIMARY KEY,
    postID INT REFERENCES Posts(postID),
    userID INT REFERENCES Users(userID),
    content TEXT NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Reactions (
    reactionID SERIAL PRIMARY KEY,
    userID INT REFERENCES Users(userID),
    postID INT REFERENCES Posts(postID),
    commentID INT REFERENCES Comments(commentID),
    reactionType VARCHAR(50) NOT NULL
);


CREATE INDEX idx_post_reactions ON Reactions(postID);
CREATE INDEX idx_comment_reactions ON Reactions(commentID);
CREATE INDEX idx_post_comments ON Comments(postID);
CREATE INDEX idx_user_posts ON Posts(userID);
CREATE INDEX idx_user_comments ON Comments(userID);