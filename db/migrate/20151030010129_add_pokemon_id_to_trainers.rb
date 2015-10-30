class AddPokemonIdToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :pokemon_id, :integer
  end
end
