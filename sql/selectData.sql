SELECT 
  *
FROM
  books
;

SELECT 
  *
FROM
  books_categories AS bc
WHERE 
  bc."categoryId" = (
      SELECT 
        "id"
      FROM 
        categories
      WHERE
        "name" = 'Fantasia'
    )
;

SELECT 
  B."id" AS "bookId",
  B."name" AS "bookName",
  C."id" AS "categoryId",
  C."name" AS "category"
FROM
  books AS B
JOIN
  books_categories AS BC
    ON 
      B."id" = BC."bookId"
JOIN
  categories AS C
    ON
      C."id" = BC."categoryId"
;

SELECT 
  B."id" AS "bookId",
  B."name" AS "bookName",
  B."pages",
  B."createdAt",
  B."updatedAt",
  A."id" AS "authorId",
  A."name" AS "author",
  A."bio" AS "authorBio"
FROM
  books AS B
JOIN 
  authors as A 
    ON 
      B."authorId" = A."id"
;

