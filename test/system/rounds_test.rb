require "application_system_test_case"

class RoundsTest < ApplicationSystemTestCase
  setup do
    @round = rounds(:one)
  end

  test "visiting the index" do
    visit rounds_url
    assert_selector "h1", text: "Rounds"
  end

  test "creating a Round" do
    visit rounds_url
    click_on "New Round"

    fill_in "B card", with: @round.b_card
    fill_in "Dealer", with: @round.dealer_id
    fill_in "Game", with: @round.game_id
    fill_in "Pick amount", with: @round.pick_amount
    fill_in "Player 1", with: @round.player_1
    fill_in "Player 10", with: @round.player_10
    fill_in "Player 10 card 1", with: @round.player_10_card_1
    fill_in "Player 10 card 2", with: @round.player_10_card_2
    fill_in "Player 10 card 3", with: @round.player_10_card_3
    fill_in "Player 1 card 1", with: @round.player_1_card_1
    fill_in "Player 1 card 2", with: @round.player_1_card_2
    fill_in "Player 1 card 3", with: @round.player_1_card_3
    fill_in "Player 2", with: @round.player_2
    fill_in "Player 2 card 1", with: @round.player_2_card_1
    fill_in "Player 2 card 2", with: @round.player_2_card_2
    fill_in "Player 2 card 3", with: @round.player_2_card_3
    fill_in "Player 3", with: @round.player_3
    fill_in "Player 3 card 1", with: @round.player_3_card_1
    fill_in "Player 3 card 2", with: @round.player_3_card_2
    fill_in "Player 3 card 3", with: @round.player_3_card_3
    fill_in "Player 4", with: @round.player_4
    fill_in "Player 4 card 1", with: @round.player_4_card_1
    fill_in "Player 4 card 2", with: @round.player_4_card_2
    fill_in "Player 4 card 3", with: @round.player_4_card_3
    fill_in "Player 5", with: @round.player_5
    fill_in "Player 5 card 1", with: @round.player_5_card_1
    fill_in "Player 5 card 2", with: @round.player_5_card_2
    fill_in "Player 5 card 3", with: @round.player_5_card_3
    fill_in "Player 6", with: @round.player_6
    fill_in "Player 6 card 1", with: @round.player_6_card_1
    fill_in "Player 6 card 2", with: @round.player_6_card_2
    fill_in "Player 6 card 3", with: @round.player_6_card_3
    fill_in "Player 7", with: @round.player_7
    fill_in "Player 7 card 1", with: @round.player_7_card_1
    fill_in "Player 7 card 2", with: @round.player_7_card_2
    fill_in "Player 7 card 3", with: @round.player_7_card_3
    fill_in "Player 8", with: @round.player_8
    fill_in "Player 8 card 1", with: @round.player_8_card_1
    fill_in "Player 8 card 2", with: @round.player_8_card_2
    fill_in "Player 8 card 3", with: @round.player_8_card_3
    fill_in "Player 9", with: @round.player_9
    fill_in "Player 9 card 1", with: @round.player_9_card_1
    fill_in "Player 9 card 2", with: @round.player_9_card_2
    fill_in "Player 9 card 3", with: @round.player_9_card_3
    fill_in "Player count", with: @round.player_count
    fill_in "Round number", with: @round.round_number
    fill_in "Win card 1", with: @round.win_card_1
    fill_in "Win card 2", with: @round.win_card_2
    fill_in "Win card 3", with: @round.win_card_3
    fill_in "Win player", with: @round.win_player
    click_on "Create Round"

    assert_text "Round was successfully created"
    click_on "Back"
  end

  test "updating a Round" do
    visit rounds_url
    click_on "Edit", match: :first

    fill_in "B card", with: @round.b_card
    fill_in "Dealer", with: @round.dealer_id
    fill_in "Game", with: @round.game_id
    fill_in "Pick amount", with: @round.pick_amount
    fill_in "Player 1", with: @round.player_1
    fill_in "Player 10", with: @round.player_10
    fill_in "Player 10 card 1", with: @round.player_10_card_1
    fill_in "Player 10 card 2", with: @round.player_10_card_2
    fill_in "Player 10 card 3", with: @round.player_10_card_3
    fill_in "Player 1 card 1", with: @round.player_1_card_1
    fill_in "Player 1 card 2", with: @round.player_1_card_2
    fill_in "Player 1 card 3", with: @round.player_1_card_3
    fill_in "Player 2", with: @round.player_2
    fill_in "Player 2 card 1", with: @round.player_2_card_1
    fill_in "Player 2 card 2", with: @round.player_2_card_2
    fill_in "Player 2 card 3", with: @round.player_2_card_3
    fill_in "Player 3", with: @round.player_3
    fill_in "Player 3 card 1", with: @round.player_3_card_1
    fill_in "Player 3 card 2", with: @round.player_3_card_2
    fill_in "Player 3 card 3", with: @round.player_3_card_3
    fill_in "Player 4", with: @round.player_4
    fill_in "Player 4 card 1", with: @round.player_4_card_1
    fill_in "Player 4 card 2", with: @round.player_4_card_2
    fill_in "Player 4 card 3", with: @round.player_4_card_3
    fill_in "Player 5", with: @round.player_5
    fill_in "Player 5 card 1", with: @round.player_5_card_1
    fill_in "Player 5 card 2", with: @round.player_5_card_2
    fill_in "Player 5 card 3", with: @round.player_5_card_3
    fill_in "Player 6", with: @round.player_6
    fill_in "Player 6 card 1", with: @round.player_6_card_1
    fill_in "Player 6 card 2", with: @round.player_6_card_2
    fill_in "Player 6 card 3", with: @round.player_6_card_3
    fill_in "Player 7", with: @round.player_7
    fill_in "Player 7 card 1", with: @round.player_7_card_1
    fill_in "Player 7 card 2", with: @round.player_7_card_2
    fill_in "Player 7 card 3", with: @round.player_7_card_3
    fill_in "Player 8", with: @round.player_8
    fill_in "Player 8 card 1", with: @round.player_8_card_1
    fill_in "Player 8 card 2", with: @round.player_8_card_2
    fill_in "Player 8 card 3", with: @round.player_8_card_3
    fill_in "Player 9", with: @round.player_9
    fill_in "Player 9 card 1", with: @round.player_9_card_1
    fill_in "Player 9 card 2", with: @round.player_9_card_2
    fill_in "Player 9 card 3", with: @round.player_9_card_3
    fill_in "Player count", with: @round.player_count
    fill_in "Round number", with: @round.round_number
    fill_in "Win card 1", with: @round.win_card_1
    fill_in "Win card 2", with: @round.win_card_2
    fill_in "Win card 3", with: @round.win_card_3
    fill_in "Win player", with: @round.win_player
    click_on "Update Round"

    assert_text "Round was successfully updated"
    click_on "Back"
  end

  test "destroying a Round" do
    visit rounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Round was successfully destroyed"
  end
end
