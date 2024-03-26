
--
-- PostgreSQL database dump
--

-- Insert data into books

INSERT INTO "Books" ("author", "title", "subtitle", "imgUrl", "description", "genres", "content", "scss", "createdAt", "updatedAt")
VALUES 
  ('George Orwell', '1984', 'Conoce al Gran Hermano', '1984.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', '{"distopic", "classic"}', '{{"Chapter 1, Page 1", "Chapter 1, Page 2"}, {"Chapter 2, Page 1", "Chapter 2, Page 2"}}', '.book { color: red; }', NOW(), NOW());

INSERT INTO "Books" ("author", "title", "subtitle", "imgUrl", "description", "genres", "content", "scss", "createdAt", "updatedAt")
VALUES 
  ('Bruno Piqué', 'Madrid Zombie', '¡Rambo no!', 'madridzombie.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', '{"zombi", "adventure"}', '{{"Chapter 1, Page 1", "Chapter 1, Page 2"}, {"Chapter 2, Page 1", "Chapter 2, Page 2"}}', '.book { color: blue; }', NOW(), NOW());

-- Insert demo pages for the book with title 'Madrid Zombie'
-- Reference -> book number + chapter number + page number

INSERT INTO "Pages" ("reference", "html", "options", "scss", "createdAt", "updatedAt")
VALUES 
  ('200', '<p>This is the content of Chapter 1, Page 1 of Madrid Zombie.</p>', '[{"displayText": "Continue", "nextPageId": "201"}]', '.page { background-color: #f0f0f0; }', NOW(), NOW()),
  ('201', '<p>This is the content of Chapter 1, Page 2 of Madrid Zombie.</p>', '[{"displayText": "Continue", "nextPageId": "210"}]', '.page { background-color: #f0f0f0; }', NOW(), NOW()),
  ('210', '<p>This is the content of Chapter 2, Page 1 of Madrid Zombie.</p>', '[{"displayText": "Continue", "nextPageId": "211"}]', '.page { background-color: #f0f0f0; }', NOW(), NOW()),
  ('211', '<p>This is the content of Chapter 2, Page 2 of Madrid Zombie.</p>', '[]', '.page { background-color: #f0f0f0; }', NOW(), NOW());

INSERT INTO "Pages" ("reference", "html", "options", "scss", "createdAt", "updatedAt")
VALUES 
  ('100', '<p>This is the content of Chapter 1, Page 1 of 1984.</p>', '[{"displayText": "Continue", "nextPageId": "101"}]', '.page { background-color: #f0f0f0; }', NOW(), NOW()),
  ('101', '<p>This is the content of Chapter 1, Page 2 of 1984.</p>', '[{"displayText": "Continue", "nextPageId": "110"}]', '.page { background-color: #f0f0f0; }', NOW(), NOW()),
  ('110', '<p>This is the content of Chapter 2, Page 1 of 1984.</p>', '[{"displayText": "Continue", "nextPageId": "111"}]', '.page { background-color: #f0f0f0; }', NOW(), NOW()),
  ('111', '<p>This is the content of Chapter 2, Page 2 of 1984.</p>', '[]', '.page { background-color: #f0f0f0; }', NOW(), NOW());