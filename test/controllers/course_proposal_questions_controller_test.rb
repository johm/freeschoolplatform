require 'test_helper'

class CourseProposalQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_proposal_question = course_proposal_questions(:one)
  end

  test "should get index" do
    get course_proposal_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_course_proposal_question_url
    assert_response :success
  end

  test "should create course_proposal_question" do
    assert_difference('CourseProposalQuestion.count') do
      post course_proposal_questions_url, params: { course_proposal_question: { help_text: @course_proposal_question.help_text, question: @course_proposal_question.question } }
    end

    assert_redirected_to course_proposal_question_url(CourseProposalQuestion.last)
  end

  test "should show course_proposal_question" do
    get course_proposal_question_url(@course_proposal_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_proposal_question_url(@course_proposal_question)
    assert_response :success
  end

  test "should update course_proposal_question" do
    patch course_proposal_question_url(@course_proposal_question), params: { course_proposal_question: { help_text: @course_proposal_question.help_text, question: @course_proposal_question.question } }
    assert_redirected_to course_proposal_question_url(@course_proposal_question)
  end

  test "should destroy course_proposal_question" do
    assert_difference('CourseProposalQuestion.count', -1) do
      delete course_proposal_question_url(@course_proposal_question)
    end

    assert_redirected_to course_proposal_questions_url
  end
end
