-- Database: blazebooks_dev

DROP DATABASE IF EXISTS blazebooks_dev;
CREATE DATABASE blazebooks_dev
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
-- Query 1: Insert the books into the 'Books' table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    author VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    subtitle VARCHAR(255),
    imgUrl VARCHAR(255),
    description TEXT,
    genres VARCHAR(255) ARRAY,
    content JSONB
);

DELETE FROM public."Books";
INSERT INTO public."Books" (id, title, subtitle, author, description, "imgUrl", "createdAt", "updatedAt", genres, content)
VALUES
  (
    0, 
    '1984', 
    'Conoce al Gran Hermano', 
    'George Orwell', 
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vestibulum finibus nisl id interdum. Curabitur viverra, lectus at porttitor scelerisque, augue quam tincidunt tellus, vel varius nulla mauris ut ex. Ut sem leo, laoreet in leo at, facilisis cursus odio. Nullam ac sapien felis. Sed hendrerit quis erat egestas sollicitudin. Curabitur sit amet volutpat elit. Ut at enim accumsan, laoreet ex sed, vehicula nibh. Mauris sapien elit, auctor tincidunt condimentum in, tristique vitae eros. Proin cursus vestibulum urna non tincidunt. Suspendisse eget maximus ante.', 
    'assets/books/1984/cover.jpg', 
    '19/02/2024', 
    '19/02/2024', 
    array['distopic', 'classic'], 
    array[ array[0,1,2], array[0,1,2]]
    ),
  (
    1, 
    'Madrid Zombie', 
    '¡Rambo no!', 
    'Bruno Piqué', 
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vestibulum finibus nisl id interdum. Curabitur viverra, lectus at porttitor scelerisque, augue quam tincidunt tellus, vel varius nulla mauris ut ex. Ut sem leo, laoreet in leo at, facilisis cursus odio. Nullam ac sapien felis. Sed hendrerit quis erat egestas sollicitudin. Curabitur sit amet volutpat elit. Ut at enim accumsan, laoreet ex sed, vehicula nibh. Mauris sapien elit, auctor tincidunt condimentum in, tristique vitae eros. Proin cursus vestibulum urna non tincidunt. Suspendisse eget maximus ante.', 
    'assets/books/madridzombie/cover.jpg', 
    '19/02/2024', 
    '19/02/2024', 
    array['zombi', 'adventure'],
    array[ array[0,1,2], array[0,1,2]])
    );

-- Query 2: Insert the chapters into the 'Chapters' table
CREATE TABLE IF NOT EXISTS Chapters(
	id INTEGER NOT NULL,
	chapterId INTEGER NOT NULL,
	pageIds INTEGER[] NOT NULL,
	PRIMARY KEY (id, chapterId)
);

DELETE FROM public."chapters";
INSERT INTO public."chapters" (id, chapterId, pageIds)
VALUES
  (0, 0, array[0, 1, 2, 3, 4]),
  (0, 1, array[0, 1, 2, 3, 4]),
  (0, 2, array[0, 1, 2, 3, 4]),
  (1, 0, array[0, 1, 2, 3, 4]),
  (1, 1, array[0, 1, 2, 3, 4]),
  (1, 2, array[0, 1, 2, 3, 4]);
  