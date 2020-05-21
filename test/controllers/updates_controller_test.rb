require 'test_helper'

class UpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @update = updates(:one)
  end

  test "should get index" do
    get updates_url, as: :json
    assert_response :success
  end

  test "should create update" do
    assert_difference('Update.count') do
      post updates_url, params: { update: { content: @update.content, user_id: @update.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show update" do
    get update_url(@update), as: :json
    assert_response :success
  end

  test "should update update" do
    patch update_url(@update), params: { update: { content: @update.content, user_id: @update.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy update" do
    assert_difference('Update.count', -1) do
      delete update_url(@update), as: :json
    end

    assert_response 204
  end
end
