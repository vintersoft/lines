`import DS from 'ember-data'`

Line = DS.Model.extend(
  name: DS.attr("string")
  tasks: DS.hasMany('task', {async:true})
)

Line.reopen
  valid: ->
    !!@get("name")

Line.reopenClass
    
  FIXTURES: [
    {
      id: 1
      name: "launo"
      tasks: [1,2,3]
    }
    {
      id: 2
      name: "Linea dos"
      tasks: [4,5]
    }
  ]

`export default Line`
