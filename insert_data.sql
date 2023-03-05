INSERT INTO user (password, email, createdAt, loggedIn, userID, name, avatarID) VALUES ("testi123", "oh@com.fi", "1980-12-17", "2023-12-17", 1, "jyrki234",1);
INSERT INTO user (password, email, createdAt, loggedIn, userID, name, avatarID) VALUES ("asdfdsfd453", "asd@gmail.com", "1980-12-17", "2021-11-17", 2, "xxxasdsdf",2);
INSERT INTO user (password, email, createdAt, loggedIn, userID, name, avatarID) VALUES ("dfgdfgdf234", "testst@luukku.fi", "1980-12-17", "2018-06-20", 3, "saana77",2);

INSERT INTO avatar (avatarID, imgPath) VALUES (1, "www.testikuva.com/kuva.png");
INSERT INTO avatar (avatarID, imgPath) VALUES (2, "www.kuvagalleria.fi/kuva/1342");
INSERT INTO avatar (avatarID, imgPath) VALUES (3, "www.kuvagalleria.fi/kuva/012");

INSERT INTO category (categoryID, categoryName) VALUES (1, "harrastukset");
INSERT INTO category (categoryID, categoryName) VALUES (2, "työ");
INSERT INTO category (categoryID, categoryName) VALUES (3, "uutiset");
INSERT INTO category (categoryID, categoryName) VALUES (4, "viihde");

INSERT INTO bookmark (bookmarkID, bookmarkName, url, userID, categoryID) VALUES (1, "jymyuutinen", "iltalehti.fi/uutinen/2334", 2, 3);
INSERT INTO bookmark (bookmarkID, bookmarkName, url, userID, categoryID) VALUES (2, "työjuttu", "stackoverflow.com", 2, 2);
INSERT INTO bookmark (bookmarkID, bookmarkName, url, userID, categoryID) VALUES (3, "työjuttu2", "jokusivu.fi", 1, 2);
INSERT INTO bookmark (bookmarkID, bookmarkName, url, userID, categoryID) VALUES (4, "työjuttu3", "asdfsdf.sdf", 3, 2);

INSERT INTO usergroup (userGroupID, groupName) VALUES (1, "harrastusryhmä");
INSERT INTO usergroup (userGroupID, groupName) VALUES (2, "työporukka");
INSERT INTO usergroup (userGroupID, groupName) VALUES (3, "pelilinkit");
INSERT INTO usergroup (userGroupID, groupName) VALUES (4, "tutkimusryhmä");

INSERT INTO groupjoin (userID, userGroupID) VALUES (2, 1);
INSERT INTO groupjoin (userID, userGroupID) VALUES (1, 2);
INSERT INTO groupjoin (userID, userGroupID) VALUES (2, 2);
INSERT INTO groupjoin (userID, userGroupID) VALUES (3, 3);