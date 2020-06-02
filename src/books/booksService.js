const booksService = {


    getAllBooks(knex){
        return knex.select('*').from('bookshelf');
    },

    insertBook(knex,newBook){
        return knex
        .insert(newBook)
        .into('bookshelf')
        .returning('*')
        .then(rows =>{
                return rows[0]
        })
    },

    deleteRecipe(knex, id ){
        return knex('bookshelf').where({id}).delete()
    }


}

module.exports = booksService