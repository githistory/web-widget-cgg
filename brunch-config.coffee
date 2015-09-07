exports.config =
  paths:
    public: './dist'
  conventions:
    assets: /^app\/assets/
  files:
    javascripts:
      joinTo:
        'js/widget.js': /.*/
    stylesheets:
      joinTo:
        'css/widget.css': /.*/
    templates:
      joinTo:
        'js/widget.js': /^app/

  plugins:
    ng_annotate:
      pattern: /^app/
    angularTemplate:
      moduleName: 'widget'
      pathToSrc: (old)->
        old.replace(/^templates\//, '').replace(/\.jade$/, '')
      ignore: [/^.*\.static\.jade/]
    jadePages:
      destination: (path) ->
        path.replace /^app[\/\\](.*)\.static\.jade$/, '$1.html'
      pattern: /^.*\.static\.jade/

