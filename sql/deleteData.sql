DELETE FROM
  books
WHERE
  "name" 
LIKE
  'Jogos Vorazes'
RETURNING
  *
;

DELETE FROM
  authors
WHERE
  "name"
LIKE
  'J. K. Rowling'
RETURNING
 *
;

DELETE FROM
  authors
WHERE
  "name"
LIKE
  'Osvaldo Silva'
RETURNING
  *
;

