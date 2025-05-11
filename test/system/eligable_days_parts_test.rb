require "application_system_test_case"

class EligableDaysPartsTest < ApplicationSystemTestCase
  setup do
    @eligable_days_part = eligable_days_parts(:one)
  end

  test "visiting the index" do
    visit eligable_days_parts_url
    assert_selector "h1", text: "Eligable days parts"
  end

  test "should create eligable days parts" do
    visit eligable_days_parts_url
    click_on "New eligable days parts"

    fill_in "Days per week", with: @eligable_days_part.days_per_week
    fill_in "Public holidays", with: @eligable_days_part.public_holidays
    fill_in "Sick days", with: @eligable_days_part.sick_days
    fill_in "Unpaid leave", with: @eligable_days_part.unpaid_leave
    fill_in "Year", with: @eligable_days_part.year
    click_on "Create Eligable days parts"

    assert_text "Eligable days parts was successfully created"
    click_on "Back"
  end

  test "should update Eligable days parts" do
    visit eligable_days_part_url(@eligable_days_part)
    click_on "Edit this eligable days parts", match: :first

    fill_in "Days per week", with: @eligable_days_part.days_per_week
    fill_in "Public holidays", with: @eligable_days_part.public_holidays
    fill_in "Sick days", with: @eligable_days_part.sick_days
    fill_in "Unpaid leave", with: @eligable_days_part.unpaid_leave
    fill_in "Year", with: @eligable_days_part.year
    click_on "Update Eligable days parts"

    assert_text "Eligable days parts was successfully updated"
    click_on "Back"
  end

  test "should destroy Eligable days parts" do
    visit eligable_days_part_url(@eligable_days_part)
    click_on "Destroy this eligable days parts", match: :first

    assert_text "Eligable days parts was successfully destroyed"
  end
end
