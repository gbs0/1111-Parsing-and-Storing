require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
# Leitura
url = "https://api.github.com/users/gbs0"
file = URI.open(url).read
response = JSON.parse(file)

p response
puts "#{response['name']} - #{response['bio']}}"

# Escrita - Aprendizados futuros [POST and Fetch]


