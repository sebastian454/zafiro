require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { antecedentes: @user.antecedentes, apellidos: @user.apellidos, aseguradora: @user.aseguradora, direccion: @user.direccion, edad: @user.edad, genero: @user.genero, municipio: @user.municipio, no_documento: @user.no_documento, nombres: @user.nombres, telefono: @user.telefono, tipo_afiliacion: @user.tipo_afiliacion, tipo_documento: @user.tipo_documento }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { antecedentes: @user.antecedentes, apellidos: @user.apellidos, aseguradora: @user.aseguradora, direccion: @user.direccion, edad: @user.edad, genero: @user.genero, municipio: @user.municipio, no_documento: @user.no_documento, nombres: @user.nombres, telefono: @user.telefono, tipo_afiliacion: @user.tipo_afiliacion, tipo_documento: @user.tipo_documento }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
