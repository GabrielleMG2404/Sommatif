require "test_helper"

class EvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_url
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference("Evaluation.count") do
      post evaluations_url, params: { evaluation: { date_evaluation: @evaluation.date_evaluation, materiel: @evaluation.materiel, notes: @evaluation.notes, numero_eval: @evaluation.numero_eval, professeur_id: @evaluation.professeur_id, student_id: @evaluation.student_id } }
    end

    assert_redirected_to evaluation_url(Evaluation.last)
  end

  test "should show evaluation" do
    get evaluation_url(@evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_url(@evaluation)
    assert_response :success
  end

  test "should update evaluation" do
    patch evaluation_url(@evaluation), params: { evaluation: { date_evaluation: @evaluation.date_evaluation, materiel: @evaluation.materiel, notes: @evaluation.notes, numero_eval: @evaluation.numero_eval, professeur_id: @evaluation.professeur_id, student_id: @evaluation.student_id } }
    assert_redirected_to evaluation_url(@evaluation)
  end

  test "should destroy evaluation" do
    assert_difference("Evaluation.count", -1) do
      delete evaluation_url(@evaluation)
    end

    assert_redirected_to evaluations_url
  end
end
