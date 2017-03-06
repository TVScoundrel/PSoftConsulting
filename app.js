'use strict'

var express = require('express')
var config = require('./config')
var mongoose = require('mongoose')
var setupController = require('./controllers/setupController')
var apiController = require('./controllers/apiController')

var app = express()
var port = process.env.PORT || 3000

app.use(express.static('public'))

app.set('view engine', 'ejs')

mongoose.connect(config.getDBConnectionString())

setupController(app)
apiController(app)

app.listen(port)
