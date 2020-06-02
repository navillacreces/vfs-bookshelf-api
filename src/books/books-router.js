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

   