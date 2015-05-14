require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post :create, image: { altText: @image.altText, captionText: @image.captionText, id: @image.id, link: @image.link, live: @image.live, marginLeft: @image.marginLeft, maxWidth: @image.maxWidth, possition: @image.possition, right: @image.right, textAlign: @image.textAlign, top: @image.top }
    end

    assert_redirected_to image_path(assigns(:image))
  end

  test "should get edit" do
    get :edit, id: @image
    assert_response :success
  end

  test "should update image" do
    patch :update, id: @image, image: { altText: @image.altText, captionText: @image.captionText, id: @image.id, link: @image.link, live: @image.live, marginLeft: @image.marginLeft, maxWidth: @image.maxWidth, possition: @image.possition, right: @image.right, textAlign: @image.textAlign, top: @image.top }
    assert_redirected_to image_path(assigns(:image))
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete :destroy, id: @image
    end

    assert_redirected_to images_path
  end
end
