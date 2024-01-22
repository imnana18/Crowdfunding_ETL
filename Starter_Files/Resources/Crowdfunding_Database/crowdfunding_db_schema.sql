/* Create our database */
CREATE DATABASE crowdfunding_db


/* Create 'category' table */
CREATE TABLE category(
	category_id VARCHAR(20) NOT NULL,
	category VARCHAR(20),

	PRIMARY KEY (category_id)
);


/* Create 'subcategory' table */
CREATE TABLE subcategory(
	subcategory_id VARCHAR(20) NOT NULL,
	subcategory VARCHAR(20),

	PRIMARY KEY (subcategory_id)
);


/* Create 'subcategory' table */
CREATE TABLE contacts(
	contact_id INTEGER NOT NULL,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR (50),

	PRIMARY KEY (contact_id)
);


/* Create 'campaign' table */
CREATE TABLE campaign(
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(256),
	desription VARCHAR(65535),
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(256),
	backers_count INTEGER NOT NULL,
	country VARCHAR(32),
	currency VARCHAR(32),
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4),
	subcategory_id VARCHAR(16),

	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) references category(category_id),
	FOREIGN KEY (subcategory_id) references subcategory(subcategory_id),
	FOREIGN KEY (contact_id) references contacts(contact_id)
);


/* IMPORT DATA INTO TABLES */

/* Right click on {table_name} under 'Tables' in pgAdmin 4 within database and click 'Import/Export data',
select '{table_name} _data.csv' file and import. */ 



/* Show data from all tables */
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;


/* To check and edit varchar lenghths if needed for run efficiency
(not required)*/
SELECT MAX(LENGTH(column_of_interest)) AS max_length
FROM {table_of_interest};
