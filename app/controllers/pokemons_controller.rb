class PokemonsController < ApplicationController

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(pokemon_params)
		@pokemon.update_attributes(health: 100, level: 1, trainer_id: current_trainer.id)
		current_trainer.update_attributes(pokemon_id: current_trainer.id)
		if @pokemon.save
			redirect_to current_trainer
		else
			redirect_to pokemons_new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_attributes(trainer_id: current_trainer.id)
		current_trainer.update_attributes(pokemon_id: @pokemon.id)
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_attributes(health: @pokemon.health - 10)
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to current_trainer
	end

	def pokemon_params
	    params.require(:pokemon).permit(:name)
	end
end
