`import DS from 'ember-data'`

Place = DS.Model.extend {
  name: DS.attr 'string'
  description: DS.attr 'string'
  location: DS.attr 'string'
  user: DS.belongsTo 'user'
  lat: DS.attr 'string'
  lng: DS.attr 'string'
  comments: DS.hasMany 'comment', async: true
}

`export default Place`
