SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS restaurant, distance, dish, priceRange, certification, restaurantType;
/* Delete existing tables in reverse order of creation so as not to violate any foreign key constraints */
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE restaurantType (
	id INT AUTO_INCREMENT,
	cafe BOOLEAN,
	restaurant BOOLEAN,
	supermarket BOOLEAN,
	fastfood BOOLEAN,
	cornershop BOOLEAN,
	bar BOOLEAN,
	takeaway BOOLEAN,
	PRIMARY KEY (id)
) ENGINE = InnoDB; 

CREATE TABLE certification (
	id INT AUTO_INCREMENT,
	vegetarian BOOLEAN,
	vegan BOOLEAN,
	halal BOOLEAN,
	PRIMARY KEY (id)
) ENGINE = InnoDB; 

CREATE TABLE priceRange (
	id INT AUTO_INCREMENT,
	under£3 BOOLEAN,
	£3-£5 BOOLEAN,
	£5-£10 BOOLEAN,
	Over£10 BOOLEAN,
	PRIMARY KEY(id)
) ENGINE = InnoDB; 

CREATE TABLE dish (
	id AUTO_INCREMENT,
	chinese BOOLEAN,
	japanese BOOLEAN,
	labanese BOOLEAN,
	caribbean BOOLEAN,
	PRIMARY KEY(id)
) ENGINE = InnoDB; 

CREATE TABLE distance (
	id INT AUTO_INCREMENT,
	Under0.3 BOOLEAN,
	Under0.5 BOOLEAN,
	Under0.7 BOOLEAN,
	Under1 BOOLEAN,
	PRIMARY KEY(id)
) ENGINE = InnoDB; 

CREATE TABLE restaurant (
	id INT AUTO_INCREMENT,
	name VARCHAR(64) NOT NULL,
	address1 VARCHAR(64) NOT NULL,
	address2 VARCHAR(64),
	address3 VARCHAR(64),
	postcode VARCHAR(8) NOT NULL,
	restaurantTypeID INT,
	PRIMARY KEY (id),
	FOREIGN KEY (restaurantTypeID) 
		REFERENCES restaurantType (id)
) ENGINE = InnoDB; 