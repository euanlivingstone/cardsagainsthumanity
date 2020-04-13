class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.integer :round_number
      t.integer :game_id
      t.integer :dealer_id
      t.integer :b_card
      t.integer :pick_amount
      t.integer :player_1
      t.integer :player_2
      t.integer :player_3
      t.integer :player_4
      t.integer :player_5
      t.integer :player_6
      t.integer :player_7
      t.integer :player_8
      t.integer :player_9
      t.integer :player_10
      t.integer :player_1_card_1
      t.integer :player_1_card_2
      t.integer :player_1_card_3
      t.integer :player_2_card_1
      t.integer :player_2_card_2
      t.integer :player_2_card_3
      t.integer :player_3_card_1
      t.integer :player_3_card_2
      t.integer :player_3_card_3
      t.integer :player_4_card_1
      t.integer :player_4_card_2
      t.integer :player_4_card_3
      t.integer :player_5_card_1
      t.integer :player_5_card_2
      t.integer :player_5_card_3
      t.integer :player_6_card_1
      t.integer :player_6_card_2
      t.integer :player_6_card_3
      t.integer :player_7_card_1
      t.integer :player_7_card_2
      t.integer :player_7_card_3
      t.integer :player_8_card_1
      t.integer :player_8_card_2
      t.integer :player_8_card_3
      t.integer :player_9_card_1
      t.integer :player_9_card_2
      t.integer :player_9_card_3
      t.integer :player_10_card_1
      t.integer :player_10_card_2
      t.integer :player_10_card_3
      t.integer :player_count
      t.integer :win_card_1
      t.integer :win_card_2
      t.integer :win_card_3
      t.integer :win_player

      t.timestamps
    end
  end
end
