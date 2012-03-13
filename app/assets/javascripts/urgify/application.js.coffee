
#= require urgify/namespaces
#= require urgify/plan/planer

Urgify.Application = Ember.Application.extend

  ready: -> Urgify.plan.Planer.create()