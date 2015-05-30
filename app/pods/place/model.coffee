`import DS from 'ember-data'`

Place = DS.Model.extend {
  name: DS.attr 'string'
  description: DS.attr 'string'
  location: DS.attr 'string'
}

`export default Place`
