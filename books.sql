DROP TABLE IF EXISTS public.books;

CREATE TABLE IF NOT EXISTS 
 books (
	 name VARCHAR(255) NOT NULL,
	 category VARCHAR (50) NOT NULL,
	 cover VARCHAR (150) NOT NULL,
	 author VARCHAR (50) NOT NULL,
	 created_at TIMESTAMPTZ DEFAULT NOW(),
	 updated_at TIMESTAMPTZ DEFAULT NOW(),
	 published_at INTEGER NOT NULL
 );

 INSERT INTO
	books(
		name,
		category,
		cover,
        author,
        published_at
		)
	VALUES(
		'The Da Vinci Code',
		'mystery',
		'https://upload.wikimedia.org/wikipedia/en/6/6b/DaVinciCode.jpg',
		'Dan Brown',
		'1964'
	),
	(
        'The Lost Symbol',
		'thriller',
		'https://upload.wikimedia.org/wikipedia/en/0/07/LostSymbol.jpg',
		'Dan Brown',
		'2009'
	),
    (
        'Origin',
		'mystery',
		'https://upload.wikimedia.org/wikipedia/en/6/67/Origin_%28Dan_Brown_novel_cover%29.jpg',
		'Dan Brown',
		'2017'
    ),
	(
		'The Seven Dials Mystery',
		'detective fiction',
		'https://upload.wikimedia.org/wikipedia/en/4/4c/The_Seven_Dials_Mystery_First_Edition_Cover_1929.jpg',
		'Agatha Christie',
		'1929'
	);


UPDATE 
	public.books
		SET 
		cover='https://images-na.ssl-images-amazon.com/images/I/518ICrLrtiL._SX319_BO1,204,203,200_.jpg'
	WHERE name='Origin' 
	RETURNING *;


SELECT DISTINCT category FROM public.books;
SELECT category FROM public.books;
SELECT name FROM public.books WHERE name LIKE 'A%';
SELECT * FROM public.books WHERE name LIKE '%rig%';
SELECT category, published_at FROM public.books;
SELECT published_at FROM public.books;
SELECT COUNT(*) FROM public.books;
DELETE FROM public.books WHERE category='detective fiction';