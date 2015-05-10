require 'test_helper'

class SanphamsControllerTest < ActionController::TestCase
  setup do
    @sanpham = sanphams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sanphams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sanpham" do
    assert_difference('Sanpham.count') do
      post :create, sanpham: { DonViTinh: @sanpham.DonViTinh, HinhAnh: @sanpham.HinhAnh, MaMatHang: @sanpham.MaMatHang, TenSP: @sanpham.TenSP }
    end

    assert_redirected_to sanpham_path(assigns(:sanpham))
  end

  test "should show sanpham" do
    get :show, id: @sanpham
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sanpham
    assert_response :success
  end

  test "should update sanpham" do
    patch :update, id: @sanpham, sanpham: { DonViTinh: @sanpham.DonViTinh, HinhAnh: @sanpham.HinhAnh, MaMatHang: @sanpham.MaMatHang, TenSP: @sanpham.TenSP }
    assert_redirected_to sanpham_path(assigns(:sanpham))
  end

  test "should destroy sanpham" do
    assert_difference('Sanpham.count', -1) do
      delete :destroy, id: @sanpham
    end

    assert_redirected_to sanphams_path
  end
end
