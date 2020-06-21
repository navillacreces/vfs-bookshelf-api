const { expect } = require('chai')
const supertest = require('supertest')
const app = require('../src/app')

describe('App', () => {
  it('GET / responds with 200 containing "getRoute"', () => {
    return supertest(app)
      .get('/')
      .expect(200, 'getRoute')
  })
})


describe('App', () => {
  it('POST / responds with 200 containing "postRoute"', () => {
    return supertest(app)
      .post('/books')
      .expect(200, 'postRoute')
  })
})


