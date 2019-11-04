require 'slack-notify'
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load

module Clockwork
  client = SlackNotify::Client.new(
    webhook_url: ENV["WEBHOOK_URL"],
    channel: "#slack-notifier",
    username: "やっほ〜bot"
  )

  every(3.minutes, '3 mins alert.') do
    puts "Running 3mins alert."
    client.notify("やっほ〜〜〜〜〜")
  end
end