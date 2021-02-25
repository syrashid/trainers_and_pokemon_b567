class PokemonMovesController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokemon_move = PokemonMove.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @moves = Move.where(id: params[:pokemon_move][:move_id])
    @moves.each do |move|
      pokemon_move = PokemonMove.new(pokemon: @pokemon, move: move)
      pokemon_move.save
    end
    redirect_to trainer_path(@pokemon.trainer)
  end


end
