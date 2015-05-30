`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  @route 'landing-page', path: ''
  @resource 'places', ->
    @route 'new'
    @route 'edit', path: ':place_id'
    @resource 'place', path: ':place_id'
  @resource 'users', ->
    @route 'sign-in'
    @route 'sign-up'

`export default Router`
