gulp = require 'gulp'
express = require('express')

gulp.task 'server', ['docs.jade'], ->
  app = express()
  app.use(express.static('_docs'))
  app.listen 9000