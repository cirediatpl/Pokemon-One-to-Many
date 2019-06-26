class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_type
      t.integer :power_level
      t.integer :trainer_id

      t.timestamps
    end
  end
end
