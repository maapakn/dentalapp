require 'test_helper'

class ArchivoControllerTest < ActionController::TestCase
  test "should get subir_archivos" do
    get :subir_archivos
    assert_response :success
  end

end
