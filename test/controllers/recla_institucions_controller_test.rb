require 'test_helper'

class ReclaInstitucionsControllerTest < ActionController::TestCase
  setup do
    @recla_institucion = recla_institucions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recla_institucions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recla_institucion" do
    assert_difference('ReclaInstitucion.count') do
      post :create, recla_institucion: { institucion_id: @recla_institucion.institucion_id, recla_id: @recla_institucion.recla_id }
    end

    assert_redirected_to recla_institucion_path(assigns(:recla_institucion))
  end

  test "should show recla_institucion" do
    get :show, id: @recla_institucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recla_institucion
    assert_response :success
  end

  test "should update recla_institucion" do
    patch :update, id: @recla_institucion, recla_institucion: { institucion_id: @recla_institucion.institucion_id, recla_id: @recla_institucion.recla_id }
    assert_redirected_to recla_institucion_path(assigns(:recla_institucion))
  end

  test "should destroy recla_institucion" do
    assert_difference('ReclaInstitucion.count', -1) do
      delete :destroy, id: @recla_institucion
    end

    assert_redirected_to recla_institucions_path
  end
end
