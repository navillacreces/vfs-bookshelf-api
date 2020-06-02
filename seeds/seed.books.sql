BEGIN;

INSERT INTO bookshelf (title,author,rating,ownership,img,purchase_link)

VALUES
(
'Adam Carolla',
'Not Taco Bell Material',
'4',
'Not Owned',
'http://books.google.com/books/content?id=PQGB6BWJTJ8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=PQGB6BWJTJ8C&printsec=frontcover&dq=inauthor:Carolla+intitle:Not+Taco+Bell&hl=&cd=1&source=gbs_api'
),
(
'Chuck Palahniuk',
'Fight Club: A Novel',
'4',
'Hardcopy',
'http://books.google.com/books/content?id=hoGkPfds4tAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=hoGkPfds4tAC&printsec=frontcover&dq=inauthor:Palahniuk+intitle:Fight+Club+A&hl=&cd=1&source=gbs_api'
),
(
'Aldous Huxley',
'Brave New World',
'3',
'E-Book',
'http://books.google.com/books/content?id=niDNtZoYsAUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=niDNtZoYsAUC&printsec=frontcover&dq=inauthor:Huxley+intitle:Brave&hl=&cd=1&source=gbs_api'
),
(
'Walter Isaacson',
'Steve Jobs',
'4',
'Hardcopy',
'http://books.google.com/books/content?id=6e4cDvhrKhgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=6e4cDvhrKhgC&printsec=frontcover&dq=inauthor:Isaacson+intitle:Steve&hl=&cd=1&source=gbs_api'
),
(
'Hunter S. Thompson',
'The Rum Diary',
'3',
'Not Owned',
'http://books.google.com/books/content?id=0AuXF547DqoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
'http://books.google.com/books?id=0AuXF547DqoC&printsec=frontcover&dq=inauthor:Thompson+intitle:The+Rum&hl=&cd=1&source=gbs_api');

COMMIT;