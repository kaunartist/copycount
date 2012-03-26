class Creator.Campaign extends Batman.Model
  @global yes
  @storageKey: 'campaigns'
  @persist Batman.RailsStorage
  @hasMany 'messages'

  @encode 'title'

  title: ''

  createMessage: (params) =>
    message = Creator.get('controllers.campaigns.emptyMessage')
    message.save (errors, record) =>
      throw errors if errors
      Creator.set 'controllers.campaigns.emptyMessage', new Message
