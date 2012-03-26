class Creator.Message extends Batman.Model
  @global yes
  @storageKey: 'messages'
  @persist Batman.RailsStorage
  @urlNestsUnder 'campaigns'
  @belongsTo 'campaign'

  @encode 'body', 'campaign_id'

  body: ''

  @accessor 'remaining', ->
    140 - @get('body').length

  @accessor 'toolong', ->
    140 - @get('body').length < 0

  @validate 'body', presence: yes, lengthIn: [1, 140]
  @validate 'campaign_id', presence: yes
