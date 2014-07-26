`import DS from 'ember-data'`

Line = DS.Model.extend(
  name: DS.attr("string")
  tasks: DS.hasMany('task', {async:true})
)

Line.reopenClass
  FIXTURES: [
    {
      id: 0
      name: "launo"
      tasks: [0,1,2]
    }
    {
      id: 1
      name: "Linea dos"
      tasks: [3,4]
    }
  ]

`export default Line`
