`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  @route 'landing-page', path: ''
  @resource 'places', ->
    @route 'new'
    @resource 'place', path: ':place_id', ->
      @route 'show', path: '/', ->
        @resource 'comments', path: '/'
      @route 'edit'
  @resource 'users', ->
    @route 'sign-in'
    @route 'sign-up'
    @route 'sign-out'
  @route 'index'

`export default Router`
