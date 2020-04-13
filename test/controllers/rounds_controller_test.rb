require 'test_helper'

class RoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @round = rounds(:one)
  end

  test "should get index" do
    get rounds_url
    assert_response :success
  end

  test "should get new" do
    get new_round_url
    assert_response :success
  end

  test "should create round" do
    assert_difference('Round.count') do
      post rounds_url, params: { round: { b_card: @round.b_card, dealer_id: @round.dealer_id, game_id: @round.game_id, pick_amount: @round.pick_amount, player_1: @round.player_1, player_10: @round.player_10, player_10_card_1: @round.player_10_card_1, player_10_card_2: @round.player_10_card_2, player_10_card_3: @round.player_10_card_3, player_1_card_1: @round.player_1_card_1, player_1_card_2: @round.player_1_card_2, player_1_card_3: @round.player_1_card_3, player_2: @round.player_2, player_2_card_1: @round.player_2_card_1, player_2_card_2: @round.player_2_card_2, player_2_card_3: @round.player_2_card_3, player_3: @round.player_3, player_3_card_1: @round.player_3_card_1, player_3_card_2: @round.player_3_card_2, player_3_card_3: @round.player_3_card_3, player_4: @round.player_4, player_4_card_1: @round.player_4_card_1, player_4_card_2: @round.player_4_card_2, player_4_card_3: @round.player_4_card_3, player_5: @round.player_5, player_5_card_1: @round.player_5_card_1, player_5_card_2: @round.player_5_card_2, player_5_card_3: @round.player_5_card_3, player_6: @round.player_6, player_6_card_1: @round.player_6_card_1, player_6_card_2: @round.player_6_card_2, player_6_card_3: @round.player_6_card_3, player_7: @round.player_7, player_7_card_1: @round.player_7_card_1, player_7_card_2: @round.player_7_card_2, player_7_card_3: @round.player_7_card_3, player_8: @round.player_8, player_8_card_1: @round.player_8_card_1, player_8_card_2: @round.player_8_card_2, player_8_card_3: @round.player_8_card_3, player_9: @round.player_9, player_9_card_1: @round.player_9_card_1, player_9_card_2: @round.player_9_card_2, player_9_card_3: @round.player_9_card_3, player_count: @round.player_count, round_number: @round.round_number, win_card_1: @round.win_card_1, win_card_2: @round.win_card_2, win_card_3: @round.win_card_3, win_player: @round.win_player } }
    end

    assert_redirected_to round_url(Round.last)
  end

  test "should show round" do
    get round_url(@round)
    assert_response :success
  end

  test "should get edit" do
    get edit_round_url(@round)
    assert_response :success
  end

  test "should update round" do
    patch round_url(@round), params: { round: { b_card: @round.b_card, dealer_id: @round.dealer_id, game_id: @round.game_id, pick_amount: @round.pick_amount, player_1: @round.player_1, player_10: @round.player_10, player_10_card_1: @round.player_10_card_1, player_10_card_2: @round.player_10_card_2, player_10_card_3: @round.player_10_card_3, player_1_card_1: @round.player_1_card_1, player_1_card_2: @round.player_1_card_2, player_1_card_3: @round.player_1_card_3, player_2: @round.player_2, player_2_card_1: @round.player_2_card_1, player_2_card_2: @round.player_2_card_2, player_2_card_3: @round.player_2_card_3, player_3: @round.player_3, player_3_card_1: @round.player_3_card_1, player_3_card_2: @round.player_3_card_2, player_3_card_3: @round.player_3_card_3, player_4: @round.player_4, player_4_card_1: @round.player_4_card_1, player_4_card_2: @round.player_4_card_2, player_4_card_3: @round.player_4_card_3, player_5: @round.player_5, player_5_card_1: @round.player_5_card_1, player_5_card_2: @round.player_5_card_2, player_5_card_3: @round.player_5_card_3, player_6: @round.player_6, player_6_card_1: @round.player_6_card_1, player_6_card_2: @round.player_6_card_2, player_6_card_3: @round.player_6_card_3, player_7: @round.player_7, player_7_card_1: @round.player_7_card_1, player_7_card_2: @round.player_7_card_2, player_7_card_3: @round.player_7_card_3, player_8: @round.player_8, player_8_card_1: @round.player_8_card_1, player_8_card_2: @round.player_8_card_2, player_8_card_3: @round.player_8_card_3, player_9: @round.player_9, player_9_card_1: @round.player_9_card_1, player_9_card_2: @round.player_9_card_2, player_9_card_3: @round.player_9_card_3, player_count: @round.player_count, round_number: @round.round_number, win_card_1: @round.win_card_1, win_card_2: @round.win_card_2, win_card_3: @round.win_card_3, win_player: @round.win_player } }
    assert_redirected_to round_url(@round)
  end

  test "should destroy round" do
    assert_difference('Round.count', -1) do
      delete round_url(@round)
    end

    assert_redirected_to rounds_url
  end
end
