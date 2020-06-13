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

        const {title,author,isbn,img,purchase_link,rating,ownership} = req.body;

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

        booksService.insertBook(knexInstance,newBook)
            .then(book =>{
                res.location(`https://localhost:8000/books/{book.id}`).status(201).json(book)
            })
            .catch(err => {
                res.send("not posted" + JSON.stringify(err))
            });

        })

booksRouter
            .route('/:id')
        
            .delete((req,res,next) =>{
                const {id} = req.params;
        
                const knexInstance = req.app.get('db')
        
                booksService.deleteBook(knexInstance,id)
                    .then(book =>{
                        res.send(204).end()
                    })
                    .catch(next)
        
            })

module.exports = booksRouter
