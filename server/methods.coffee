# Methods

Meteor.methods

  # Leads

  addLead: (opts) ->
    return Leads.insert opts

  deleteLead: (_id) ->
    return Leads.remove _id

  # Documents

  addDocument: (opts) ->
    return Documents.insert opts

  # Emailing

  emailDocument: (opts) ->
    # If deployed to meteor.com you can comment out the following line
    process.env.MAIL_URL = 'smtp://postmaster%40cmal.mailgun.org:3ldr22afg917@smtp.mailgun.org:587'
    Email.send(
      {
        from: 'test@blah.com'
        to: 'test@blah.com'
        bcc: 'test@blah.com'
        subject: 'Take a look at these documents'
        html: "<h1>You've been invited to view a document: #{doc_title}</h1><p>To view the document please click the following link:</p><p><a href='#{url}'></p>"
        }
      )