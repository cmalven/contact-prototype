# Configure Router
Router.configure
  layoutTemplate: 'layout'

Router.map ->

  @route 'home',
    path: '/',
    template: 'index'
    data: ->
      isLeads: Leads.find().count()
      leads: Leads.find()

  @route 'new_lead',
    path: '/new-lead',
    template: 'new_lead'
    data: ->
      documents: Documents.find()
  
  @route 'leads_show',
    path: '/leads/:_id',
    template: 'leads_show'
    data: ->
      lead = Leads.findOne
        _id: @params._id

      return {
        lead: lead
        documents: Documents.find
          _id: {$in: lead.documents}
      }