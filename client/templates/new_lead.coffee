Template.new_lead.helpers

  # blah: ->
  #   return "blah"

Template.new_lead.events
  'click .js-create-lead': (evt, template) ->
    evt.preventDefault()
    form = $(evt.target).closest('form')
    formContent = form.serializeObject()
    formContent.documents = _.map form.find('.js-document-checkbox:checked'), (checkbox) ->
      return $(checkbox).data 'document-id'
    Meteor.call 'addLead', formContent, (error, result) =>
      Router.go '/'