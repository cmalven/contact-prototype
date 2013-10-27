# Methods

Meteor.methods

  # Leads

  addLead: (opts) ->
    return Leads.insert opts

  deleteLead: (_id) ->
    console.log '_id', _id
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
        from: 'patrontest@chrismalven.com'
        to: 'cmalven@chrismalven.com'
        bcc: 'cmalven@chrismalven.com'
        subject: 'Take a look at these documents'
        html: "<h1>You've been invited to a VoteBox: #{question}</h1><p>To participate in this vote please click the following link:</p><p><a href='#{url}vote/#{newVoteId}'>Participate in this vote</a><p><strong>What is VoteBox?</strong> VoteBox makes it easy for groups of any size to vote on any issue. Use it to pick a restaurant, plan an event, or to make an important decision.</p>"
        }
      )