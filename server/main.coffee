# Publications

# Don't need this until autopublish package is removed
# Meteor.publish 'documents', ->
#   return Documents.find()

# Bootstrap Documents

if not Documents.find().count()
  bootstrapDocs = [
    'test-document.pdf'
    'another-test-document.pdf'
    'ultimate-test-document.pdf'
  ]

  _.each bootstrapDocs, (docPath) ->
    Meteor.call 'addDocument', { path: docPath }