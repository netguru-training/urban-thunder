`import DS from 'ember-data'`

Place = DS.Model.extend {
  location: DS.attr()
  string: DS.attr()
  name: DS.attr 'string'
  description: DS.attr 'string'
}

`export default Place`
