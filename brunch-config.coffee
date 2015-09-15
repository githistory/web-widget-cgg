exports.config =
  modules:
    wrapper: false
  paths:
    public: './dist'
    watched: ['app', 'demo']
  conventions:
    assets: /^app\/assets/
  files:
    javascripts:
      joinTo:
        'js/widget.js': /^(app|bower_components)/
        'js/demo.js': /^demo/
      order:
        after: [
          'app/scripts/**/*.coffee'
          'app/**/*.coffee'
        ]
    stylesheets:
      joinTo:
        'css/widget.css': /.*/
    templates:
      joinTo:
        'js/widget.js': /^app/
        'js/demo.js': /^demo/
      order:
        after: [
          'app/**/*.jade'
        ]

  plugins:
    ng_annotate:
      pattern: /^app/
    angularTemplate:
      moduleName: 'cgg.widget'
      pathToSrc: (old)->
        old.replace(/\.jade$/, '')
      ignore: [/^.*\.static\.jade/]
    jadePages:
      destination: (path) ->
        path.replace /^(app|demo)\/(.*)\.static\.jade$/, '$2.html'
      pattern: /^.*\.static\.jade/
      jade:
        pretty: true

