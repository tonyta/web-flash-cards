get '/decks/:deck_id/cards/:card_num' do
  @deck = Deck.find(params[:deck_id])
  @card_num = params[:card_num].to_i
  @card = @deck.cards[ @card_num - 1 ]
  erb :'cards/show'
end
