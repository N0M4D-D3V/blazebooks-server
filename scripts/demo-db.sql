-- Remove previous data
DELETE FROM public."Books";
DELETE FROM public."Pages";

-- Insert data
INSERT INTO public."Books" (author, title, subtitle, "imgUrl", description, genres, "createdAt", "updatedAt", content)
VALUES 
    (
      'George Orwell', 
      '1984', 
      'Conoce al Gran Hermano', 
      'assets/books/1984/cover.jpg', 
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 
      '{"distopic", "classic"}', 
      NOW(), 
      NOW(), 
      '{{"1", "2"}, {"3", "4"}}'
    ),
    (
      'Bruno Piqué', 
      'Madrid Zombie', 
      '¡Rambo no!', 
      'assets/books/madridzombie/cover.jpg', 
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 
      '{"zombi", "adventure"}', 
      NOW(), 
      NOW(), 
      '{{"5", "6"}, {"7", "8"}}');

INSERT INTO public."Pages" (html, options)
VALUES 
    ('<p>This is page 1</p>', '[{"displayText": "Option 1", "nextPageId": "2"}, {"displayText": "Option 2", "nextPageId": "3"}]'),
    ('<p>This is page 2</p>', '[{"displayText": "Option 1", "nextPageId": "3"}, {"displayText": "Option 2", "nextPageId": "4"}]'),
    ('<p>This is page 3</p>', '[{"displayText": "Option 1", "nextPageId": "1"}, {"displayText": "Option 2", "nextPageId": "2"}]'),
    ('<p>This is page 4</p>', '[{"displayText": "Option 1", "nextPageId": "3"}, {"displayText": "Option 2", "nextPageId": "4"}]'),
    ('<p>This is page 5</p>', '[{"displayText": "Option 1", "nextPageId": "6"}, {"displayText": "Option 2", "nextPageId": "6"}]'),
    ('<p>This is page 6</p>', '[{"displayText": "Option 1", "nextPageId": "5"}, {"displayText": "Option 2", "nextPageId": "7"}]'),
    ('<p>This is page 7</p>', '[{"displayText": "Option 1", "nextPageId": "6"}, {"displayText": "Option 2", "nextPageId": "8"}]'),
    ('<p>This is page 8</p>', '[{"displayText": "Option 1", "nextPageId": "7"}, {"displayText": "Option 2", "nextPageId": "7"}]');
    
