require 'test_helper'

class CourseProposalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_proposal = course_proposals(:one)
  end

  test "should get index" do
    get course_proposals_url
    assert_response :success
  end

  test "should get new" do
    get new_course_proposal_url
    assert_response :success
  end

  test "should create course_proposal" do
    assert_difference('CourseProposal.count') do
      post course_proposals_url, params: { course_proposal: { email: @course_proposal.email, proposed_by: @course_proposal.proposed_by, site_id: @course_proposal.site_id } }
    end

    assert_redirected_to course_proposal_url(CourseProposal.last)
  end

  test "should show course_proposal" do
    get course_proposal_url(@course_proposal)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_proposal_url(@course_proposal)
    assert_response :success
  end

  test "should update course_proposal" do
    patch course_proposal_url(@course_proposal), params: { course_proposal: { email: @course_proposal.email, proposed_by: @course_proposal.proposed_by, site_id: @course_proposal.site_id } }
    assert_redirected_to course_proposal_url(@course_proposal)
  end

  test "should destroy course_proposal" do
    assert_difference('CourseProposal.count', -1) do
      delete course_proposal_url(@course_proposal)
    end

    assert_redirected_to course_proposals_url
  end
end
