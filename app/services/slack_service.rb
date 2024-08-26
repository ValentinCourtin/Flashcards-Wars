class SlackService
  def initialize(token)
    @token = token
    @uri = URI.parse('https://slack.com/api/chat.postMessage')
  end

  def send_message(channel:, text:)
    http = Net::HTTP.new(@uri.host, @uri.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(@uri.request_uri)
    request['Authorization'] = "Bearer #{@token}"
    request['Content-Type'] = 'application/json'
    request.body = {
      channel: channel,
      text: text
    }.to_json

    response = http.request(request)
    handle_response(response)
  end

  private

  def handle_response(response)
    if response.is_a?(Net::HTTPSuccess)
      puts "Message sent successfully: #{response.body}"
    else
      puts "Error sending message: #{response.body}"
    end
  end
end
