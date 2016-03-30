require 'test_helper'

class AbilityScoresControllerTest < ActionController::TestCase
  setup do
    @ability_score = ability_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ability_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ability_score" do
    assert_difference('AbilityScore.count') do
      post :create, ability_score: { charisma: @ability_score.charisma, constitution: @ability_score.constitution, dexterity: @ability_score.dexterity, intelligence: @ability_score.intelligence, strength: @ability_score.strength, wisdom: @ability_score.wisdom }
    end

    assert_redirected_to ability_score_path(assigns(:ability_score))
  end

  test "should show ability_score" do
    get :show, id: @ability_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ability_score
    assert_response :success
  end

  test "should update ability_score" do
    patch :update, id: @ability_score, ability_score: { charisma: @ability_score.charisma, constitution: @ability_score.constitution, dexterity: @ability_score.dexterity, intelligence: @ability_score.intelligence, strength: @ability_score.strength, wisdom: @ability_score.wisdom }
    assert_redirected_to ability_score_path(assigns(:ability_score))
  end

  test "should destroy ability_score" do
    assert_difference('AbilityScore.count', -1) do
      delete :destroy, id: @ability_score
    end

    assert_redirected_to ability_scores_path
  end
end
