require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { avatar: @user.avatar, city: @user.city, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, love_datadog: @user.love_datadog, password_digest: @user.password_digest, pronouns: @user.pronouns, team: @user.team, title: @user.title, top_skills: @user.top_skills, username: @user.username, weekend: @user.weekend } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { avatar: @user.avatar, city: @user.city, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, love_datadog: @user.love_datadog, password_digest: @user.password_digest, pronouns: @user.pronouns, team: @user.team, title: @user.title, top_skills: @user.top_skills, username: @user.username, weekend: @user.weekend } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
