class CreateGameUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :game_users do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :points
      t.integer :w_card_1
      t.integer :w_card_2
      t.integer :w_card_3
      t.integer :w_card_4
      t.integer :w_card_5
      t.integer :w_card_6
      t.integer :w_card_7
      t.integer :w_card_8
      t.integer :w_card_9
      t.integer :w_card_10

      t.timestamps
    end
  end
end
