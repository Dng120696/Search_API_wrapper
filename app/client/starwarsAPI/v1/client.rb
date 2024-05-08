class StarwarsAPI::V1::Client

  BASE_URL = 'https://swapi.dev/api/'.freeze

  def films
    request(
      method: :get,
      endpoint: "films"
    )
  end
  def get_film(id)
    request(
      method: :get,
      endpoint: "films/#{id}"
    )
  end

  def people
    request(
      method: :get,
      endpoint: "people"
    )
  end

  def get_person(id)
    request(
      method: :get,
      endpoint: "people/#{id}"
    )
  end

  def planets
    request(
      method: :get,
      endpoint: "planets"
    )
  end

  def species
    request(
      method: :get,
      endpoint: "species"
    )
  end

  def starships
    request(
      method: :get,
      endpoint: "starships"
    )
  end

  def vehicles
    request(
      method: :get,
      endpoint: "vehicles"
    )
  end


  private

  def request(method:, endpoint:)
    response = connection.public_send(method, endpoint)

  handle_response(response)
  end

  def connection
    @connection ||= Faraday.new(url: BASE_URL)
  end

  def handle_response(response)
    if response.success?
      JSON.parse(response.body).with_indifferent_access
    elsif response.status == 404
      raise "Resource not found"
    else
      raise "Unknown error occurred: #{response.status}"
    end
  rescue Faraday::Error => e
    raise "Connection error: #{e.message}"
  rescue JSON::ParserError => e
    raise "Error parsing response: #{e.message}"
  end
end
