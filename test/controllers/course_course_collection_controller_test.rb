require 'test_helper'

class CourseCourseSeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_course_series = course_course_series(:one)
  end

  test "should get index" do
    get course_course_series_index_url
    assert_response :success
  end

  test "should get new" do
    get new_course_course_series_url
    assert_response :success
  end

  test "should create course_course_series" do
    assert_difference('CourseCourseSeries.count') do
      post course_course_series_index_url, params: { course_course_series: { course_id: @course_course_series.course_id, course_series_id: @course_course_series.course_series_id } }
    end

    assert_redirected_to course_course_series_url(CourseCourseSeries.last)
  end

  test "should show course_course_series" do
    get course_course_series_url(@course_course_series)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_course_series_url(@course_course_series)
    assert_response :success
  end

  test "should update course_course_series" do
    patch course_course_series_url(@course_course_series), params: { course_course_series: { course_id: @course_course_series.course_id, course_series_id: @course_course_series.course_series_id } }
    assert_redirected_to course_course_series_url(@course_course_series)
  end

  test "should destroy course_course_series" do
    assert_difference('CourseCourseSeries.count', -1) do
      delete course_course_series_url(@course_course_series)
    end

    assert_redirected_to course_course_series_index_url
  end
end
