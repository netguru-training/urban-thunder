`import DS from 'ember-data'`
`import EmberValidations from 'ember-validations'`

User = DS.Model.extend EmberValidations.Mixin,
  email: DS.attr 'string'
  password: DS.attr 'string'

  validations:
    email:
      presence: true
    password:
      presence: true

`export default User`
