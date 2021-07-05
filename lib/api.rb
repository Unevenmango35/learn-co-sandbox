class Api
  def self.fetch_jokes
    url = "http://api.icndb.com/jokes"
    url =URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)

    array_of jokes = hash
    return array_of jokes
  end
end