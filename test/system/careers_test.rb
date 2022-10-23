require "application_system_test_case"

class CareersTest < ApplicationSystemTestCase
  setup do
    @career = careers(:one)
  end

  test "visiting the index" do
    visit careers_url
    assert_selector "h1", text: "Careers"
  end

  test "creating a Career" do
    visit careers_url
    click_on "New Career"

    fill_in "Company scale", with: @career.company_scale
    fill_in "Content", with: @career.content
    fill_in "End day", with: @career.end_day
    fill_in "Industry", with: @career.industry
    fill_in "Occupation", with: @career.occupation
    fill_in "Position", with: @career.position
    fill_in "Start day", with: @career.start_day
    fill_in "User", with: @career.user_id
    click_on "Create Career"

    assert_text "Career was successfully created"
    click_on "Back"
  end

  test "updating a Career" do
    visit careers_url
    click_on "Edit", match: :first

    fill_in "Company scale", with: @career.company_scale
    fill_in "Content", with: @career.content
    fill_in "End day", with: @career.end_day
    fill_in "Industry", with: @career.industry
    fill_in "Occupation", with: @career.occupation
    fill_in "Position", with: @career.position
    fill_in "Start day", with: @career.start_day
    fill_in "User", with: @career.user_id
    click_on "Update Career"

    assert_text "Career was successfully updated"
    click_on "Back"
  end

  test "destroying a Career" do
    visit careers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Career was successfully destroyed"
  end
end
