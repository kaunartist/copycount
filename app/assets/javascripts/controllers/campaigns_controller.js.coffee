class Creator.CampaignsController extends Batman.Controller
  emptyCampaign: null
  campaign: null

  index: (params) ->
    @set 'emptyCampaign', Campaign.new
    
  show: (params) ->
    @set 'campaign', Campaign.find parseInt(params.id, 10), (errors) ->
      throw errors if errors

    @set 'emptyMessage', new Message campaign_id: params.id
    
  create: (params) ->
    @get('emptyCampaign').save (errors, record) =>
      throw errors if errors
      Creator.flashSuccess 'Campaign created.'
      @set 'emptyCampaign', new Campaign
    
  update: (params) ->
    
  destroy: (params) ->
    
