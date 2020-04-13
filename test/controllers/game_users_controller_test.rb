require 'test_helper'

class GameUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_user = game_users(:one)
  end

  test "should get index" do
    get game_users_url
    assert_response :success
  end

  test "should get new" do
    get new_game_user_url
    assert_response :success
  end

  test "should create game_user" do
    assert_difference('GameUser.count') do
      post game_users_url, params: { game_user: { game_id: @game_user.game_id, points: @game_user.points, user_id: @game_user.user_id, w_card_1: @game_user.w_card_1, w_card_10: @game_user.w_card_10, w_card_2: @game_user.w_card_2, w_card_3: @game_user.w_card_3, w_card_4: @game_user.w_card_4, w_card_5: @game_user.w_card_5, w_card_6: @game_user.w_card_6, w_card_7: @game_user.w_card_7, w_card_8: @game_user.w_card_8, w_card_9: @game_user.w_card_9 } }
    end

    assert_redirected_to game_user_url(GameUser.last)
  end

  test "should show game_user" do
    get game_user_url(@game_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_user_url(@game_user)
    assert_response :success
  end

  test "should update game_user" do
    patch game_user_url(@game_user), params: { game_user: { game_id: @game_user.game_id, points: @game_user.points, user_id: @game_user.user_id, w_card_1: @game_user.w_card_1, w_card_10: @game_user.w_card_10, w_card_2: @game_user.w_card_2, w_card_3: @game_user.w_card_3, w_card_4: @game_user.w_card_4, w_card_5: @game_user.w_card_5, w_card_6: @game_user.w_card_6, w_card_7: @game_user.w_card_7, w_card_8: @game_user.w_card_8, w_card_9: @game_user.w_card_9 } }
    assert_redirected_to game_user_url(@game_user)
  end

  test "should destroy game_user" do
    assert_difference('GameUser.count', -1) do
      delete game_user_url(@game_user)
    end

    assert_redirected_to game_users_url
  end
end
