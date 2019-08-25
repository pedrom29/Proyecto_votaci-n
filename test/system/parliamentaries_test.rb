require "application_system_test_case"

class ParliamentariesTest < ApplicationSystemTestCase
  setup do
    @parliamentary = parliamentaries(:one)
  end

  test "visiting the index" do
    visit parliamentaries_url
    assert_selector "h1", text: "Parliamentaries"
  end

  test "creating a Parliamentary" do
    visit parliamentaries_url
    click_on "New Parliamentary"

    fill_in "Birthdate", with: @parliamentary.birthdate
    fill_in "District", with: @parliamentary.district_id
    fill_in "Name", with: @parliamentary.name
    fill_in "Political party", with: @parliamentary.political_party
    click_on "Create Parliamentary"

    assert_text "Parliamentary was successfully created"
    click_on "Back"
  end

  test "updating a Parliamentary" do
    visit parliamentaries_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @parliamentary.birthdate
    fill_in "District", with: @parliamentary.district_id
    fill_in "Name", with: @parliamentary.name
    fill_in "Political party", with: @parliamentary.political_party
    click_on "Update Parliamentary"

    assert_text "Parliamentary was successfully updated"
    click_on "Back"
  end

  test "destroying a Parliamentary" do
    visit parliamentaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parliamentary was successfully destroyed"
  end
end
