class PokemonController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_attributes(trainer_id: current_trainer.id)
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@new_health = @pokemon.health - 10
		@pokemon.update_attributes(health: @new_health)
		redirect_to trainer_path
	end

end
