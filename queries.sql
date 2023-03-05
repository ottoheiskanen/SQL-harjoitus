/* Hae käyttäjälle kuuluvat kirjanmerkit */

SELECT bookmark.userID, bookmark.bookmarkName, bookmark.url, user.userID
FROM bookmark
INNER JOIN user ON bookmark.bookmarkID = user.userID;

/*  Näytä ryhmät johon käyttäjä kuuluu */

SELECT user.userID, user.name, usergroup.groupName
	FROM user
LEFT OUTER JOIN groupjoin
	ON user.userID = groupjoin.userID
LEFT OUTER JOIN usergroup
	ON groupjoin.userGroupID = usergroup.userGroupID

/* Hae käyttäjien profiilikuvat */ 

SELECT user.avatarID, user.name, avatar.imgPath
FROM avatar
INNER JOIN user ON avatar.avatarID = user.avatarID

/* Etsi tietyn käyttäjän kirjanmerkit ja lajittelee ne kategorian perusteella */

SELECT bookmark.userID, bookmark.bookmarkName, bookmark.categoryID, category.categoryID, category.categoryName
	FROM bookmark
	INNER JOIN category
	ON bookmark.categoryID = category.categoryID
	WHERE bookmark.userID = 2 /* Tähän etsittävän käyttäjän id*/
	ORDER BY category.categoryName

/* Näytä kunkin käyttäjän omistamien kirjanmerkkien määrä */

SELECT user.*, COUNT(bookmark.userID)
FROM user
LEFT JOIN bookmark
ON (bookmark.userID = user.userID)
GROUP BY
bookmark.userID

/* Tarkastele käyttäjien aktiivisuutta lajittelemalla heidät 'loggedIn' -päivämäärän mukaan */

SELECT user.*
FROM user
ORDER BY user.loggedIn DESC