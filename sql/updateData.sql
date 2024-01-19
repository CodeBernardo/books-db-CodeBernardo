UPDATE
  books
SET
  "name" = 'Harry Potter e o Prisioneiro de Azkaban'
WHERE
  "name" ILIKE 'Harry Potter'
RETURNING
  * 
;

UPDATE
  books
SET
  "authorId" = (
    SELECT
      "id"
    FROM
      authors
    WHERE
      "name" = 'Eiichiro Oda'
  )
WHERE
  "name" ILIKE 'One Piece%'
RETURNING 
  * 
;