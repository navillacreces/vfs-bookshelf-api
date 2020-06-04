const booksService = {


    getAllBooks(knex){
        return knex.select('*').from('books');
    },

    insertBook(knex,newBook){
        return knex
        .insert(newBook)
        .into('books')
        .returning('*')
        .then(rows =>{
                return rows[0]
        })
    },

    deleteBook(knex, id ){
        return knex('books').where({id}).delete()
    }


}

module.exports = booksService