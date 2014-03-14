get '/decks/:deck_id/cards/:card_num' do
  @deck = Deck.find(params[:deck_id])
  @card_num = params[:card_num]
  @card = @deck.cards[ params[:card_num] - 1 ]
  erb :'cards/show'
end


/decks/3/cards/2
