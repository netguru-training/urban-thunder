`import DS from 'ember-data'`

Place = DS.Model.extend {
  name: DS.attr 'string'
  description: DS.attr 'string'
  location: DS.attr 'string'
  user: DS.belongsTo 'user'
}

`export default Place`
