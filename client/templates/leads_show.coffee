Template.leads_show.helpers

  # blah: ->
  #   return "blah"

Template.leads_show.events
  'click .js-delete-lead': (evt, template) ->
    evt.preventDefault()
    Meteor.call 'deleteLead', template.data.lead._id, (error, result) =>
      Router.go '/'