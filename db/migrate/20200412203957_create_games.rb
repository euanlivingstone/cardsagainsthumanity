class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :round_id
      t.integer :number_of_players

      t.timestamps
    end
  end
end
