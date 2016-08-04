require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  setup do
    @story = stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story" do
    assert_difference('Story.count') do
      post :create, story: { analisis: @story.analisis, diagnostico: @story.diagnostico, enfermedad_actual: @story.enfermedad_actual, examen_fisico: @story.examen_fisico, motivo_consulta: @story.motivo_consulta, plan_mejora: @story.plan_mejora, users_id: @story.users_id }
    end

    assert_redirected_to story_path(assigns(:story))
  end

  test "should show story" do
    get :show, id: @story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story
    assert_response :success
  end

  test "should update story" do
    patch :update, id: @story, story: { analisis: @story.analisis, diagnostico: @story.diagnostico, enfermedad_actual: @story.enfermedad_actual, examen_fisico: @story.examen_fisico, motivo_consulta: @story.motivo_consulta, plan_mejora: @story.plan_mejora, users_id: @story.users_id }
    assert_redirected_to story_path(assigns(:story))
  end

  test "should destroy story" do
    assert_difference('Story.count', -1) do
      delete :destroy, id: @story
    end

    assert_redirected_to stories_path
  end
end
