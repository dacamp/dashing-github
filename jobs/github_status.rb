require 'httparty'

github_api = 'https://status.github.com/api/last-message.json'

SCHEDULER.every '1m', :first_in => 0 do
  send_event('github_status', HTTParty.get(github_api).parsed_response)
end