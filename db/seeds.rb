require 'csv'
require 'open-uri'

puts 'Criando Evento'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, liberal_parsing: true }
filepath1 = 'rev_nordeste_all.csv'

CSV.foreach(filepath1, csv_options) do |row|
  Event.create!(
    name: row[4],
    address: row[6],
    region: 'Nordeste',
    date: row[5],
    price: row[9],
    description: row[7]
  )
end
