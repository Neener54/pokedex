require 'test_helper'

class PokemonControllerTest < ActionController::TestCase
  test "#index" do
    get 'index'
    assert_template :index

  end

  test "#pokemon" do
    get 'show', id: 1
    assert_template :show
  end
  # test "the truth" do
  #   assert true
  # end
end
