require 'test_helper'

class CourseSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_session = course_sessions(:one)
  end

  test "should get index" do
    get course_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_course_session_url
    assert_response :success
  end

  test "should create course_session" do
    assert_difference('CourseSession.count') do
      post course_sessions_url, params: { course_session: { course_id: @course_session.course_id, end: @course_session.end, start: @course_session.start } }
    end

    assert_redirected_to course_session_url(CourseSession.last)
  end

  test "should show course_session" do
    get course_session_url(@course_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_session_url(@course_session)
    assert_response :success
  end

  test "should update course_session" do
    patch course_session_url(@course_session), params: { course_session: { course_id: @course_session.course_id, end: @course_session.end, start: @course_session.start } }
    assert_redirected_to course_session_url(@course_session)
  end

  test "should destroy course_session" do
    assert_difference('CourseSession.count', -1) do
      delete course_session_url(@course_session)
    end

    assert_redirected_to course_sessions_url
  end
end
