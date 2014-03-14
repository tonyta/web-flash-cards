$(document).ready(function() {
  $('button').on("click", function() {
    $.get('/decks/:deck_id/cards/:card_num', , function() {
      if ($("#id"..front")) {
        $('#card').text("<%= @deck.cards[@card_num].back %>")
      } else {
        $('#card').text("<%= @deck.cards[@card_num].front %>")
      }
    })
  })
});
