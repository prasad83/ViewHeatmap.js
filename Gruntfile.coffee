module.exports = (grunt) ->
  pkg = grunt.file.readJSON("package.json")
  grunt.initConfig
    coffee:
      compile:
        files:
          "build/heatmap.js": ["src/*.coffee"]
          
    uglify:
      compress:
        files:
          "build/heatmap.min.js": ["build/heatmap.js"]

    watch:
      js:
        files: ["src/*"]
        tasks: ["coffee"]

  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.registerTask "default", ["coffee", "uglify"]
