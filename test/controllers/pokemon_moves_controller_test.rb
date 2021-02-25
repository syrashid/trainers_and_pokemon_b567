require 'test_helper'

class PokemonMovesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pokemon_moves_new_url
    assert_response :success
  end

end
