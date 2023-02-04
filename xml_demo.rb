require "nokogiri"

# Parsing -> XML
file = File.open("data/beatles.xml")
document = Nokogiri::XML(file)
beatles = document.search("beatles beatle")

beatles.each do |beatle|
  first_name = beatle.search("first_name").text.capitalize
  last_name = beatle.search("last_name").text.capitalize
  instrument = beatle.search("instrument").text.capitalize

  puts "#{first_name} #{last_name} played #{instrument}"
end

# Storing 
filepath = "data/recipes.xml"
builder = Nokogiri::XML::Builder.new(encoding: "UTF-8") do
  recipes do
    recipe do
      name "Kibe"
      description "Kibe delicioso"
      price 10
    end
    recipe do
        name "Pavê"
        description "Pra ver ou pra comer?"
        price 25
    end
  end
end

File.open(filepath, "wb") { |file| file.write(builder.to_xml) }