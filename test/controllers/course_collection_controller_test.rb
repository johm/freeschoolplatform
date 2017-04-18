require 'test_helper'

class CourseSeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_series = course_series(:one)
  end

  test "should get index" do
    get course_series_index_url
    assert_response :success
  end

  test "should get new" do
    get new_course_series_url
    assert_response :success
  end

  test "should create course_series" do
    assert_difference('CourseSeries.count') do
      post course_series_index_url, params: { course_series: { description: @course_series.description, is_open: @course_series.is_open, name: @course_series.name, site_id: @course_series.site_id } }
    end

    assert_redirected_to course_series_url(CourseSeries.last)
  end

  test "should show course_series" do
    get course_series_url(@course_series)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_series_url(@course_series)
    assert_response :success
  end

  test "should update course_series" do
    patch course_series_url(@course_series), params: { course_series: { description: @course_series.description, is_open: @course_series.is_open, name: @course_series.name, site_id: @course_series.site_id } }
    assert_redirected_to course_series_url(@course_series)
  end

  test "should destroy course_series" do
    assert_difference('CourseSeries.count', -1) do
      delete course_series_url(@course_series)
    end

    assert_redirected_to course_series_index_url
  end
end
