class SearchAPI::V1::Client

  BASE_URL = 'https://www.searchapi.io/api/v1'.freeze
  API_KEY = Rails.application.credentials[:google_search_api_key]



  def google_images(params)
    request(
      method: :get,
      endpoint: "search",
      params: params
    )
  end

  def google_videos(params)
    request(
      method: :get,
      endpoint: "search",
      params: params
    )
  end

  def google_news(params)
    request(
      method: :get,
      endpoint: "search",
      params: params
    )
  end

  def google_maps(params)
    request(
      method: :get,
      endpoint: "search",
      params: params
    )
  end

  private

  def request(method:, endpoint:, params: {})
    response = connection.public_send(method, endpoint) do |request|
      request.params = {api_key: API_KEY, **params}
    end

  handle_response(response)
  end

  def connection
    @connection ||= Faraday.new(url: BASE_URL)
  end

  def handle_response(response)
    if response.success?
      JSON.parse(response.body).with_indifferent_access
    else
      raise "Unknown error occurred: #{response.status}"
    end
  rescue Faraday::Error => e
    raise "Connection error: #{e.message}"
  rescue JSON::ParserError => e
    raise "Error parsing response: #{e.message}"
  end
end
