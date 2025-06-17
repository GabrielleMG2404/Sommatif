require "application_system_test_case"

class InscriptionsTest < ApplicationSystemTestCase
  setup do
    @inscription = inscriptions(:one)
  end

  test "visiting the index" do
    visit inscriptions_url
    assert_selector "h1", text: "Inscriptions"
  end

  test "should create inscription" do
    visit inscriptions_url
    click_on "New inscription"

    fill_in "Date inscription", with: @inscription.date_inscription
    fill_in "Paiement", with: @inscription.paiement
    fill_in "Student", with: @inscription.student_id
    click_on "Create Inscription"

    assert_text "Inscription was successfully created"
    click_on "Back"
  end

  test "should update Inscription" do
    visit inscription_url(@inscription)
    click_on "Edit this inscription", match: :first

    fill_in "Date inscription", with: @inscription.date_inscription
    fill_in "Paiement", with: @inscription.paiement
    fill_in "Student", with: @inscription.student_id
    click_on "Update Inscription"

    assert_text "Inscription was successfully updated"
    click_on "Back"
  end

  test "should destroy Inscription" do
    visit inscription_url(@inscription)
    click_on "Destroy this inscription", match: :first

    assert_text "Inscription was successfully destroyed"
  end
end
