
# ------ load basic dependencies -------

#= require jquery
#= require jquery_ujs
#= require embient/require
#= require ember-dev
#= require embient/addons/sproutcore-routing
#= require embient/addons/sproutcore-statechart
#= require embient/addons/ember-data

# ------ load testing extras -------
# (jasmine + jasmine-jquery are loaded automatically)

#= require sinon.js
#= require jasmine-sinon.js

# ------ load all specs ------
#= require_tree ./unit

jasmine.rice.autoExecute = false

define 'jasmine.waitsfor.requirejs', ->
require ['jasmine.waitsfor.requirejs'], ->
  jasmine.getEnv().execute()