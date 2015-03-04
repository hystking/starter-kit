gulp = require 'gulp'
config = require '../config'
browserify = require 'browserify'
source = require 'vinyl-source-stream'

gulp.task 'browserify', () ->
    return browserify({
        entries: [config.path.coffee + 'app.coffee'],
        extensions: ['.coffee']
    })
    # .transform('coffeeify')
    .bundle()
    .pipe(source('app.concat.js'))
    .pipe(gulp.dest(config.path.js))
