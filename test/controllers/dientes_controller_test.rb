require 'test_helper'

class DientesControllerTest < ActionController::TestCase
  setup do
    @diente = dientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diente" do
    assert_difference('Diente.count') do
      post :create, diente: { numero: @diente.numero }
    end

    assert_redirected_to diente_path(assigns(:diente))
  end

  test "should show diente" do
    get :show, id: @diente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diente
    assert_response :success
  end

  test "should update diente" do
    patch :update, id: @diente, diente: { numero: @diente.numero }
    assert_redirected_to diente_path(assigns(:diente))
  end

  test "should destroy diente" do
    assert_difference('Diente.count', -1) do
      delete :destroy, id: @diente
    end

    assert_redirected_to dientes_path
  end
end
