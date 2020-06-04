CREATE TABLE books (

	id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	title TEXT NOT NULL,
	author TEXT NOT NULL,
	rating INTEGER,
	ownership TEXT, 
	isbn TEXT,
	img TEXT,
	purchase_link TEXT
);