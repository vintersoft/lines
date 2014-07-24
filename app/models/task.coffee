`import DS from 'ember-data'`

Task = DS.Model.extend(
  title: DS.attr("string")
  description: DS.attr("string")
)

Task.FIXTURES = [
  {
    id: 0
    title: "uno"
    description: "El contenido de la **primera** nota con un link [click here](http://www.google.com)"
  }
  {
    id: 1
    title: "Titulo dos"
    description: "El contenido de la segunda nota con hashtags #enelmedio y #alfinal"
  }
  {
    id: 2
    title: "Titulo tres"
    description: "El contenido de la tercera nota es más largo que la nota convencional antes mostrada.\nEsto se debe a cambios en la estructura de las notas para conformar con las especificaciones de las notas más comunes. Si está desconforme por favor, comuníquese con nosotros y será atendido. Gracias."
  }
  {
    id: 3
    title: "Titulo cuatro"
    description: "El contenido de la cuarta nota"
  }
  {
    id: 4
    title: "Titulo cinco"
    description: "El contenido de la quinta nota"
  }
]

`export default Task`
