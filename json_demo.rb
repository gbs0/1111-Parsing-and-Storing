require 'json'

# Parsing -> Transformando o JSON em um Objeto da Classe Hash
filepath = "data/beatles.json"
serialized_beatles = File.read(filepath)
beatles = JSON.parse(serialized_beatles)

p beatles.class # => Hash
p beatles["beatles"].class

beatles["beatles"].each do |hash|
  puts "Full Name: #{hash['first_name']} #{hash['last_name']} | Instrument: #{hash['instrument']}"
end

# Storing -> A partir de uma hash, vamos gerar um arquivo.json
user = {
  "login": "gbs0",
  "id": 33099210,
  "node_id": "MDQ6VXNlcjMzMDk5MjEw",
  "avatar_url": "https://avatars.githubusercontent.com/u/33099210?v=4",
  "gravatar_id": "",
  "url": "https://api.github.com/users/gbs0",
  "html_url": "https://github.com/gbs0",
  "followers_url": "https://api.github.com/users/gbs0/followers",
  "following_url": "https://api.github.com/users/gbs0/following{/other_user}",
  "gists_url": "https://api.github.com/users/gbs0/gists{/gist_id}",
  "starred_url": "https://api.github.com/users/gbs0/starred{/owner}{/repo}",
  "subscriptions_url": "https://api.github.com/users/gbs0/subscriptions",
  "organizations_url": "https://api.github.com/users/gbs0/orgs",
  "repos_url": "https://api.github.com/users/gbs0/repos",
  "events_url": "https://api.github.com/users/gbs0/events{/privacy}",
  "received_events_url": "https://api.github.com/users/gbs0/received_events",
  "type": "User",
  "site_admin": false,
  "name": "Gabriel Schiavo",
  "company": nil,
  "blog": "gabs.website",
  "location": "Jacareí - SP",
  "email": nil,
  "hireable": true,
  "bio": "Full Stack Developer. Get your shell aboard and let's code, allez-y! Feel free to contact me:",
  "twitter_username": nil,
  "public_repos": 161,
  "public_gists": 20,
  "followers": 115,
  "following": 84,
  "created_at": "2017-10-25T16:51:14Z",
  "updated_at": "2023-02-02T21:27:22Z"
}

filepath = 'data/user.json'

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(user))
end
