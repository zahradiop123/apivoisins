require 'test_helper'

class VoisinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voisin = voisins(:one)
  end

  test "should get index" do
    get voisins_url
    assert_response :success
  end

  test "should get new" do
    get new_voisin_url
    assert_response :success
  end

  test "should create voisin" do
    assert_difference('Voisin.count') do
      post voisins_url, params: { voisin: { about: @voisin.about, address: @voisin.address, favory: @voisin.favory, name: @voisin.name, phone: @voisin.phone } }
    end

    assert_redirected_to voisin_url(Voisin.last)
  end

  test "should show voisin" do
    get voisin_url(@voisin)
    assert_response :success
  end

  test "should get edit" do
    get edit_voisin_url(@voisin)
    assert_response :success
  end

  test "should update voisin" do
    patch voisin_url(@voisin), params: { voisin: { about: @voisin.about, address: @voisin.address, favory: @voisin.favory, name: @voisin.name, phone: @voisin.phone } }
    assert_redirected_to voisin_url(@voisin)
  end

  test "should destroy voisin" do
    assert_difference('Voisin.count', -1) do
      delete voisin_url(@voisin)
    end

    assert_redirected_to voisins_url
  end
end
