# VFS-Bookshelf-API
This is the back end API for the Virtual Full-Stack Bookshelf app. 
# Tech

  - JavaScript
  - Node.js
  - Express framework
  - PostgreSQL
  - Heroku

### Routes

   **GET books**
----

* **URL**

  /books/

* **Method:**

  `GET` 

* **Success Response:**

  * **Code:** 200 
    **Content:** `{ id : 1,
"title" : 'book title',
"author":'book author',
"rating":'User's rating,
"ownership": 'medium of ownership of book',
"img":'link to thumbnail',
"purchase_link": 'a link to purchase the book ' }`
 
* **Error Response:**

  * **Code:** 500 Internal Server Error
    **Content:** `{json(error) }`

* **Sample Call:**

```
curl --location --request GET 'url/books' \
--header 'Content-Type: application/json'
```

 **Post book**
----


* **URL**

    /books/

* **Method:**
  
    POST

* **Data Params**

  **newBook:** `{ id : 1,
"title" : 'book title',
"author":'book author',
"rating":'User's rating,
"ownership": 'medium of ownership of book',
"img":'link to thumbnail',
"purchase_link": 'a link to purchase the book ' }`

* **Success Response:**

  * **Code:** 201 
    **Content:** `{ id : 1,
"title" : 'book title',
"author":'book author',
"rating":'User's rating,
"ownership": 'medium of ownership of book',
"img":'link to thumbnail',
"purchase_link": 'a link to purchase the book ' }`
 
* **Error Response:**


  * **Code:** 500 Internal Server Error
    **Content:** `{ "json(error) }`

* **Sample Call:**

```
curl --location --request GET 'url/books' \
--header 'Content-Type: application/json'
```

**Delete book**
----


* **URL**

    '/books/{id}'

* **Method:**

    DELETE 
  
*  **URL Params**

   **Required:**
 
   `id=[integer]`

* **Success Response:**
  

  * **Code:** 204
    
 
* **Error Response:**

  * **Code:** 500 Internal Server Error
    **Content:** `{ json(error) }`

* **Sample Call:**
```
 curl --location --request DELETE '/books/id' \
--header 'Content-Type: application/json'
```

## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`

Run the tests `npm test`

## Deploying

When your new project is ready for deployment, add a new Heroku application with `heroku create`. This will make a new git remote called "heroku" and you can then `npm run deploy` which will push to this remote's master branch.