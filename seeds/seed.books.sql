BEGIN;

INSERT INTO bookshelf (title,author,rating,ownership,isbn,img,purchase_link)

VALUES
(
'Adam Carolla',
'Not Taco Bell Material',
'4',
'Not Yet Owned',
'9780307888877',
'http://books.google.com/books/content?id=yRw0Ih18ZBEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=yRw0Ih18ZBEC&printsec=frontcover&dq=inauthor:Carolla+isbn:9780307888877&hl=&cd=1&source=gbs_api'
),
(
'Chuck Palahniuk',
'Fight Club: A Novel',
'4',
'Hardcopy',
'9780393039764',
'http://books.google.com/books/content?id=-qgAgg91C9wC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=-qgAgg91C9wC&printsec=frontcover&dq=inauthor:Palahniuk+isbn:9780393039764&hl=&cd=1&source=gbs_api'
),
(
'Aldous Huxley',
'Brave New World',
'3',
'E-Book',
'9783150092842',
'http://books.google.com/books/content?id=mcyVPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
'http://books.google.com/books?id=mcyVPwAACAAJ&dq=inauthor:Huxley+isbn:9783150092842&hl=&cd=1&source=gbs_api'
),
(
'Walter Isaacson',
'Steve Jobs',
'4',
'Hardcopy',
'9781408703748',
'http://books.google.com/books/content?id=BYy1swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
'http://books.google.com/books?id=BYy1swEACAAJ&dq=inauthor:Isaacson+isbn:9781408703748&hl=&cd=1&source=gbs_api'
),
(
'Hunter S. Thompson',
'The Rum Diary',
'3',
'Not Yet Owned', 
'9781451659719',
'http://books.google.com/books/content?id=c5tMZGbhCkEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=c5tMZGbhCkEC&printsec=frontcover&dq=inauthor:Thompson+isbn:9781451659719&hl=&cd=1&source=gbs_api'
);

COMMIT;