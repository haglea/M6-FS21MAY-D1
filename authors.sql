DROP TABLE IF EXISTS public.authors;

CREATE TABLE IF NOT EXISTS 
 authors (
	 name VARCHAR(50) NOT NULL,
	 last_name VARCHAR (50) NOT NULL,
     birth_year INTEGER NOT NULL,
	 country VARCHAR (50) NOT NULL
 );

  INSERT INTO
	authors (
		name,
		last_name,
		birth_year,
        country		
		)
	VALUES (
		'Dan',
		'Brown',
		'1964',
		'USA'
	 ),
     (
        'Agatha',
		'Christie',
		'1976',
		'UK'
     ),
     (
        'Paulo',
		'Coelho',
		'1947',
		'Brasil'
     ),
     (
        'Ken',
		'Follett',
		'1949',
		'UK'
     ),
     (
        'John',
		'Grisham',
		'1955',
		'USA'
     ),
     (
        'Stephen',
		'King',
		'1947',
		'USA'
     ),
     (
        'Haruki',
		'Murakami',
		'1949',
		'Japan'
     ),
     (
        'James',
		'Patterson',
		'1947',
		'USA'
     );


UPDATE 
	public.authors
		SET 
		birth_year='1890'
	WHERE last_name='Christie' 
	RETURNING *;

SELECT * FROM public.authors WHERE birth_year BETWEEN 2021 AND 1961;
SELECT * FROM public.authors WHERE birth_year NOT BETWEEN 2021 AND 1981;

SELECT * FROM public.authors WHERE date_part('year', CURRENT_DATE) - (birth_year) < 60
ORDER BY birth_year DESC;

SELECT * FROM public.authors ORDER BY birth_year ASC;

DELETE FROM public.books WHERE country='Brasil';
DELETE FROM public.authors WHERE last_name LIKE 'H%';