require 'csv'

# Parsing -> Extraindo as informações
CSV.foreach('data/beatles.csv', headers: :first_row) do |linha|
    puts "Full Name: #{linha['First Name']} #{linha['Last Name']} | Instrument: #{linha['Instrument']}"
end

# Storing -> Armazenar as infos dentro do CSV
# File.open modes
# Mode |  Meaning
# -----+--------------------------------------------------------
# "r"  |  Read-only, starts at beginning of file  (default mode).
# -----+--------------------------------------------------------
# "r+" |  Read-write, starts at beginning of file.
# -----+--------------------------------------------------------
# "w"  |  Write-only, truncates existing file
#      |  to zero length or creates a new file for writing.
# -----+--------------------------------------------------------
# "w+" |  Read-write, truncates existing file to zero length
#      |  or creates a new file for reading and writing.
# -----+--------------------------------------------------------
# "a"  |  Write-only, starts at end of file if file exists,
#      |  otherwise creates a new file for writing.
# -----+--------------------------------------------------------
# "a+" |  Read-write, starts at end of file if file exists,
#      |  otherwise creates a new file for reading and
#      |  writing.
# -----+--------------------------------------------------------
# "b"  |  Binary file mode (may appear with
#      |  any of the key letters listed above).
#      |  Suppresses EOL <-> CRLF conversion on Windows. And
#      |  sets external encoding to ASCII-8BIT unless explicitly
#      |  specified.
# -----+--------------------------------------------------------
# "t"  |  Text file mode (may appear with
#      |  any of the key letters listed above except "b").
recipes = [
    ["Big Mac", "Sanduiche do Mc Donalds", 25],
    ["Whopper", "Sanduiche do BK", 25],
    ["Esfirra", "Esfirra Arábe", 25]
]

CSV.open('./data/recipes.csv', 'wb') do |linha|
    linha << (['Name', 'Description', 'Price'])
    recipes.map do |recipe|
        linha << recipe
    end
end