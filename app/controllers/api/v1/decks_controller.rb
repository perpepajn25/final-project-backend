class Api::V1::DecksController < ApplicationController

  def create
      @deck = Deck.new(title: params[:deck][:title], subject: params[:deck][:subject], public: params[:deck][:public])
      if @deck.save
      UserDeck.create(user: current_user, deck: @deck)
      params[:deck][:cards].each do |card|
        Card.create(deck: @deck, question: card[:question], answer: card[:answer])
      end
      render json: @deck.to_json(include: [:cards, :stars ,:forks])
    else
      render json: { message: 'Deck Invalid'}, status: 401
    end
  end

  def destroy
    @deck= Deck.find(params[:id])
    if @deck.destroy
      render json: { note: 'delivered' }, status: 202
    else
      render json: { message: 'Deck Invalid'}, status: 401
    end
  end

  def public
    @decks = Deck.joins(:user_decks).where('public = ?', 'true').where('user_decks.user_id !=?', current_user.id)
    render json: @decks
  end

end
