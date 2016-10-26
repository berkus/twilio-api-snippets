require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Get the queue with the given sid
@queue = @client.account.queues('QU32a3c49700934481addd5ce1659f04d2').fetch

# Update the queue size
@queue.update(max_size: '123')

# Print the average wait time for the given queue
puts @queue.average_wait_time