`import DS from 'ember-data'`

Task = DS.Model.extend(

  title: DS.attr("string")
  description: DS.attr("string")
  line: DS.belongsTo('line', {async: true})

  parent: "line"

  valid: ->
    !!@get("title")
)

Task.reopenClass
  FIXTURES: [
    {
      id: 1
      title: "uno"
      description: "El contenido de la **primera** nota con un link [click here](http://www.google.com)"
      line: 1
    }
    {
      id: 2
      title: "Titulo dos"
      description: "El contenido de la segunda nota con hashtags #enelmedio y #alfinal"
      line: 1
    }
    {
      id: 3
      title: "Titulo tres"
      description: "El contenido de la tercera nota es más largo que la nota convencional antes mostrada.\nEsto se debe a cambios en la estructura de las notas para conformar con las especificaciones de las notas más comunes. Si está desconforme por favor, comuníquese con nosotros y será atendido. Gracias."
      line: 1
    }
    {
      id: 4
      title: "Titulo cuatro"
      description: "El contenido de la cuarta nota"
      line: 2
    }
    {
      id: 5
      title: "Titulo cinco"
      description: "El contenido de la quinta nota"
      line: 2
    }
    {
      id: 6
      title: "Titulo seis"
      description: "El contenido de la sexta nota"
      line: 3
    }
  ]

`export default Task`
