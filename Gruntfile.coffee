time = require 'time-grunt'
jit = require 'jit-grunt'
autoprefixer = require 'autoprefixer'
cssVariables = require 'postcss-css-variables'
calc = require 'postcss-calc'

config =
    responsive_images:
        options:
            engine: 'im'
            newFilesOnly: false
        'small':
            options:
                sizes: [{rename: false, width: 500}]
            files: [
                    expand: true
                    cwd: 'raw-images'
                    src: '**/*.{jpg,png}'
                    dest: 'public/images/small'
            ]
        'large':
            options:
                sizes: [{rename: false, width: 1000}]
            files: [
                    expand: true
                    cwd: 'raw-images'
                    src: '**/*.{jpg,png}'
                    dest: 'public/images/large'
            ]

    exec:
        harp: 'harp compile'
        pubimport: 'pubimport publications includes/publications.html'

    'gh-pages':
        production:
            options:
                base: 'www'
            src: '**/*'
        stage:
            options:
                base: 'www'
                repo: 'git@github.com:dominiclooser/stage.carolinedorn.ch.git'
            src: '**/*'

    postcss:
        options:
            processors: [autoprefixer({browers: 'last 2 versions'}), cssVariables, calc]
        main:
            src: 'www/styles/styles.css'

    copy:
        main:
            src: ['images/**/*', 'scripts/*.js', 'favicon.ico', 'fonts/*.*', 'videos/*.*', 'styles/*.css']
            cwd: 'public'
            expand: true
            dest: 'www/' 
        'production':
            src: 'cnames/production'
            dest: 'www/CNAME'
        'stage':
            src: 'cnames/stage'
            dest: 'www/CNAME'

    coffee:
        main:
            expand: true
            flatten: true
            ext: '.js'
            src: 'public/scripts/*.coffee'
            dest: 'www/scripts/'

    stylus:
        main:
            src: 'public/styles/styles.styl'
            dest: 'www/styles/styles.css'

    yaml:
        main:
            expand: true
            src: ['harp.yml', 'public/**/_data.yml']
            ext: '.json'
            
    watch:
        options:
            livereload: true
        pubimport:
            files: ['publications/*.*']
            tasks: ['exec:pubimport']

        yaml:
            files: ['**/*.yml']
            tasks: ['yaml']
        images:
            files: ['raw-images/*']
            tasks: ['responsive_images']
        all:
            files: ['**/*.*']
            tasks: []

module.exports = (grunt) ->
    grunt.initConfig config
    time grunt
    jit grunt
    grunt.registerTask 'default', ['compile', 'watch'] 
    grunt.registerTask 'compile', [ 'yaml', 'force:on', 'exec:harp', 'force:off', 'copy:main', 'stylus', 'postcss', 'coffee'] #'exec:pubimport'
    grunt.registerTask 'deploy', ['compile','copy:production', 'gh-pages:production']
    grunt.registerTask 'stage', ['compile','copy:stage', 'gh-pages:stage']
