'use strict'

var configValues = require('./config.json')

module.exports = {
  getDBConnectionString: function () {
    return 'mongodb://' + configValues.uname + ':' + configValues.pwd + '@ds145299.mlab.com:45299/psconsultingtodo'
  }
}