
#= require urgify/application
#= require urgify/plan/planer

describe 'Urgify application', ->

  it 'should be an ember application', ->
    (expect Urgify.Application).toExtend Ember.Application

  describe 'initialization', ->

    beforeEach ->
      @Planer = mockEmberClass Urgify.plan.Planer

    afterEach ->
      @Planer.restore()

    it 'should create planer when ready', ->
      application = Urgify.Application.create()

      (expect @Planer.create).toHaveBeenCalled()