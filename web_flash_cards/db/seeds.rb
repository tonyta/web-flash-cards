require 'csv'

Card.destroy_all
Deck.destroy_all
d = Deck.create!(category: 'state')
CSV.foreach("db/fixtures/state_capitals.csv", :headers => true) do |row|
  row_hash = row.to_hash
  row_hash[:deck_id] = d.id
  Card.create!(row_hash)
end
