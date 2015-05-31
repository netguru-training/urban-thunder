`import DS from 'ember-data'`

Comment = DS.Model.extend {
  text: DS.attr 'string'
  place: DS.belongsTo 'place'
}

`export default Comment`
