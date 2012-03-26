window.Creator = class Creator extends Batman.App

  @root 'campaigns#index'
  @resources 'campaigns'
  @resources 'messages'

  # @route '/controller/:id', 'controller#show', resource: 'model', action: 'show'

  @on 'run', ->
    console?.log "Running ...."

  @on 'ready', ->
    console?.log "Creator ready for use."

  @flash: Batman()
  @flash.accessor
    get: (key) -> @[key]
    set: (key, value) ->
      @[key] = value
      if value isnt ''
        setTimeout =>
          @set(key, '')
        , 2000
      value

  @flashSuccess: (message) -> @set 'flash.success', message
  @flashError: (message) ->  @set 'flash.error', message
