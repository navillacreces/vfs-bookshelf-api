const express = require('express')

const booksService = require('./booksService')

const booksRouter = express.Router()

const bodyParser = express.json()

booksRouter
    .route('/')


    .get((req,res,next) =>{

        const knexInstance = req.app.get('db')

        booksService.getAllBooks(knexInstance)
            .then(books =>{
                res.json(books)
            })
            .catch(next)

    })


    .post(bodyParser,(req,res) =>{

        const {title,author,isbn,img,purchase_link} = req.body;

        if (!title || !author){
            return res.status(400).send('invalid data')
        }

        const newBook = {
            title: title,
            author: author,
            isbn: isbn,
            img: img,
            purchase_link: purchase_link
        }

        const knexInstance = req.app.get('db')

        recipeService.insertBook(knexInstance,newBook)
            .then(recipe =>{
                res.location(`https://localhost:8000/books/{book.id}`).status(201).json(book)
            })
            .catch(err => {
                res.send("not posted" + JSON.stringify(err))
            });

    })

module.exports = booksRouter
   