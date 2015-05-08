require 'test_helper'

class SlideShowImagesControllerTest < ActionController::TestCase
  setup do
    @slide_show_image = slide_show_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slide_show_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slide_show_image" do
    assert_difference('SlideShowImage.count') do
      post :create, slide_show_image: { altText: @slide_show_image.altText, captionText: @slide_show_image.captionText, link: @slide_show_image.link, marginLeft: @slide_show_image.marginLeft, maxWidth: @slide_show_image.maxWidth, possition: @slide_show_image.possition, right: @slide_show_image.right, textAllign: @slide_show_image.textAllign, top: @slide_show_image.top }
    end

    assert_redirected_to slide_show_image_path(assigns(:slide_show_image))
  end

  test "should show slide_show_image" do
    get :show, id: @slide_show_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slide_show_image
    assert_response :success
  end

  test "should update slide_show_image" do
    patch :update, id: @slide_show_image, slide_show_image: { altText: @slide_show_image.altText, captionText: @slide_show_image.captionText, link: @slide_show_image.link, marginLeft: @slide_show_image.marginLeft, maxWidth: @slide_show_image.maxWidth, possition: @slide_show_image.possition, right: @slide_show_image.right, textAllign: @slide_show_image.textAllign, top: @slide_show_image.top }
    assert_redirected_to slide_show_image_path(assigns(:slide_show_image))
  end

  test "should destroy slide_show_image" do
    assert_difference('SlideShowImage.count', -1) do
      delete :destroy, id: @slide_show_image
    end

    assert_redirected_to slide_show_images_path
  end
end
