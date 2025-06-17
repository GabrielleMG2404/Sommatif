require "test_helper"

class ProfesseursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professeur = professeurs(:one)
  end

  test "should get index" do
    get professeurs_url
    assert_response :success
  end

  test "should get new" do
    get new_professeur_url
    assert_response :success
  end

  test "should create professeur" do
    assert_difference("Professeur.count") do
      post professeurs_url, params: { professeur: { date_naissance: @professeur.date_naissance, email: @professeur.email, nom_professeur: @professeur.nom_professeur, numero_telephone: @professeur.numero_telephone } }
    end

    assert_redirected_to professeur_url(Professeur.last)
  end

  test "should show professeur" do
    get professeur_url(@professeur)
    assert_response :success
  end

  test "should get edit" do
    get edit_professeur_url(@professeur)
    assert_response :success
  end

  test "should update professeur" do
    patch professeur_url(@professeur), params: { professeur: { date_naissance: @professeur.date_naissance, email: @professeur.email, nom_professeur: @professeur.nom_professeur, numero_telephone: @professeur.numero_telephone } }
    assert_redirected_to professeur_url(@professeur)
  end

  test "should destroy professeur" do
    assert_difference("Professeur.count", -1) do
      delete professeur_url(@professeur)
    end

    assert_redirected_to professeurs_url
  end
end
