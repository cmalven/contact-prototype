# Publications

# Don't need this until autopublish package is removed
# Meteor.publish 'documents', ->
#   return Documents.find()

# Bootstrap Documents

if not Documents.find().count()

  # Bootstrap the Panels
  Meteor.call 'addDocument',
    path: 'test-document.pdf'

  Meteor.call 'addDocument',
    path: 'another-test-document.pdf'

  Meteor.call 'addDocument',
    path: 'ultimate-test-document.pdf'