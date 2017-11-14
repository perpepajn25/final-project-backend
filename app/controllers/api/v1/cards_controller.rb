class Api::V1::CardsController < ApplicationController

  def create
    @user_deck = UserDeck.find_by(deck_id: card_params[:deck_id])
    @card = Card.new(deck_id: card_params[:deck_id],question: card_params[:question], answer: card_params[:answer])
    if @card.save && @user_deck.user === current_user
      render json: @card, status: 202
    else
      render json: { message: 'Card Invalid'}, status: 401
    end
  end

  def update
    @card = Card.find(card_params[:id])
    if @card.update(question: card_params[:question], answer: card_params[:answer])
      render json: @card, status: 202
    else
      render json: { message: 'Card Invalid'}, status: 401
    end
  end

  def destroy
    @card = Card.find(params[:id])
    if @card.destroy
      render json: { note: 'delivered' }, status: 202
    else
      render json: { message: 'Card Invalid'}, status: 401
    end
  end

  private
  def card_params
    params.require(:card).permit(:id,:question,:answer,:deck_id)
  end

end
