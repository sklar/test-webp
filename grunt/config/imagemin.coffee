##
# Minify images.
# @see https://www.npmjs.org/package/grunt-contrib-imagemin
#

module.exports = (grunt) ->

    imageminWebp = require 'imagemin-webp'

    production:
        options:
            use: [
                imageminWebp(
                    quality: 50
                )
            ]
        files: [
            {
                expand: true
                flatten: true
                cwd: '<%= path.global.source %>/images'
                src: ['**/*.jpg']
                dest: '<%= path.global.build %>/images'
            }
        ]
