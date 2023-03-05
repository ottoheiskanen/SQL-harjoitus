CREATE TABLE Category
(
  categoryID INT NOT NULL AUTO_INCREMENT,
  categoryName VARCHAR(40) NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE Avatar
(
  avatarID INT NOT NULL AUTO_INCREMENT,
  imgPath VARCHAR(150) NOT NULL,
  PRIMARY KEY (avatarID)
);

CREATE TABLE UserGroup
(
  userGroupID INT NOT NULL AUTO_INCREMENT,
  groupName VARCHAR(40) NOT NULL,
  PRIMARY KEY (userGroupID)
);

CREATE TABLE User
(
  password VARCHAR(40) NOT NULL,
  email VARCHAR(50) NOT NULL,
  createdAt DATE NOT NULL,
  loggedIn DATE NOT NULL,
  userID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(25) NOT NULL,
  avatarID INT,
  PRIMARY KEY (userID),
  FOREIGN KEY (avatarID) REFERENCES Avatar(avatarID),
  UNIQUE (email)
);

CREATE TABLE Bookmark
(
  bookmarkID INT NOT NULL AUTO_INCREMENT,
  bookmarkName VARCHAR(30) NOT NULL,
  url VARCHAR(150) NOT NULL,
  userID INT NOT NULL,
  categoryID INT NOT NULL,
  PRIMARY KEY (bookmarkID),
  FOREIGN KEY (userID) REFERENCES User(userID),
  FOREIGN KEY (categoryID) REFERENCES Category(categoryID)
);

CREATE TABLE GroupJoin
(
  userID INT NOT NULL,
  userGroupID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (userID, userGroupID),
  FOREIGN KEY (userID) REFERENCES User(userID),
  FOREIGN KEY (userGroupID) REFERENCES UserGroup(userGroupID)
);
