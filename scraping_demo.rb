require 'nokogiri'
require 'open-uri'

puts ('-' * 12)
puts 'Welcome to Cookbook by BBCGoodFood'
puts 'Type the ingredient you want to looking for:'
print "> "
ingredient = gets.chomp 

url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"
html_file = URI.open(url).read
document = Nokogiri::HTML.parse(html_file)

recipe_cards = document.search(".standard-card-new--skinny")

recipe_cards.each_with_index do |recipe, index|
  recipe_name = recipe.search(".standard-card-new__article-title").text.strip
  recipe_link = "https://www.bbcgoodfood.com" + recipe.search(".standard-card-new__article-title").attribute('href').value
  puts "#{index + 1} | #{recipe_name} - See more: #{recipe_link}"
end
