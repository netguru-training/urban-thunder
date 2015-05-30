`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from '../helpers/start-app'`

application = null

module 'Acceptance: Places',
  beforeEach: ->
    application = startApp()
    ###
    Don't return as Ember.Application.then is deprecated.
    Newer version of QUnit uses the return value's .then
    function to wait for promises if it exists.
    ###
    return

  afterEach: ->
    Ember.run application, 'destroy'

test 'visiting /places/new', (assert) ->
  visit 'places/new'

  andThen ->
    assert.equal currentRouteName(), 'places.new'

  fillIn('.input--name', 'test name')
  fillIn('.input--description', 'test description')
  click '.button--save'

  andThen ->
    assert.equal currentRouteName(), 'places'

