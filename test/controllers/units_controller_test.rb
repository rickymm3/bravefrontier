require 'test_helper'

class UnitsControllerTest < ActionController::TestCase
  setup do
    @unit = units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit" do
    assert_difference('Unit.count') do
      post :create, unit: { base_atk: @unit.base_atk, base_def: @unit.base_def, base_hp: @unit.base_hp, base_rec: @unit.base_rec, bb_id: @unit.bb_id, description: @unit.description, element_id: @unit.element_id, evolve_id: @unit.evolve_id, full_image: @unit.full_image, ls_id: @unit.ls_id, name: @unit.name, no: @unit.no, numhits: @unit.numhits, rarity_id: @unit.rarity_id, slug: @unit.slug, thumb_image: @unit.thumb_image }
    end

    assert_redirected_to unit_path(assigns(:unit))
  end

  test "should show unit" do
    get :show, id: @unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit
    assert_response :success
  end

  test "should update unit" do
    patch :update, id: @unit, unit: { base_atk: @unit.base_atk, base_def: @unit.base_def, base_hp: @unit.base_hp, base_rec: @unit.base_rec, bb_id: @unit.bb_id, description: @unit.description, element_id: @unit.element_id, evolve_id: @unit.evolve_id, full_image: @unit.full_image, ls_id: @unit.ls_id, name: @unit.name, no: @unit.no, numhits: @unit.numhits, rarity_id: @unit.rarity_id, slug: @unit.slug, thumb_image: @unit.thumb_image }
    assert_redirected_to unit_path(assigns(:unit))
  end

  test "should destroy unit" do
    assert_difference('Unit.count', -1) do
      delete :destroy, id: @unit
    end

    assert_redirected_to units_path
  end
end
