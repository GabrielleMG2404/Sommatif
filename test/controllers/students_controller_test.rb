require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { class_room_id: @student.class_room_id, cours_id: @student.cours_id, date_naissance: @student.date_naissance, email: @student.email, grade: @student.grade, nom_student: @student.nom_student, numero_parents: @student.numero_parents, numero_telephone: @student.numero_telephone, professeur_id: @student.professeur_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { class_room_id: @student.class_room_id, cours_id: @student.cours_id, date_naissance: @student.date_naissance, email: @student.email, grade: @student.grade, nom_student: @student.nom_student, numero_parents: @student.numero_parents, numero_telephone: @student.numero_telephone, professeur_id: @student.professeur_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
