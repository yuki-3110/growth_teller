require 'test_helper'

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_experience_url
    assert_response :success
  end

  test "should create experience" do
    assert_difference('Experience.count') do
      post experiences_url, params: { experience: { industry: @experience.industry, ingenuity: @experience.ingenuity, learn_age: @experience.learn_age, learn_hour: @experience.learn_hour, occupation: @experience.occupation, result: @experience.result, study_method: @experience.study_method, title: @experience.title, trigger: @experience.trigger, user_id: @experience.user_id } }
    end

    assert_redirected_to experience_url(Experience.last)
  end

  test "should show experience" do
    get experience_url(@experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_experience_url(@experience)
    assert_response :success
  end

  test "should update experience" do
    patch experience_url(@experience), params: { experience: { industry: @experience.industry, ingenuity: @experience.ingenuity, learn_age: @experience.learn_age, learn_hour: @experience.learn_hour, occupation: @experience.occupation, result: @experience.result, study_method: @experience.study_method, title: @experience.title, trigger: @experience.trigger, user_id: @experience.user_id } }
    assert_redirected_to experience_url(@experience)
  end

  test "should destroy experience" do
    assert_difference('Experience.count', -1) do
      delete experience_url(@experience)
    end

    assert_redirected_to experiences_url
  end
end
