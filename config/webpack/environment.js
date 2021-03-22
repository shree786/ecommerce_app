const { environment } = require('@rails/webpacker')
const elm =  require('./loaders/elm')
const erb = require('./loaders/erb')

environment.loaders.prepend('erb', erb)
environment.loaders.prepend('elm', elm)
module.exports = environment
