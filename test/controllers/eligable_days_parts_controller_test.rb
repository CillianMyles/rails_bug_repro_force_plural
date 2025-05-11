require "test_helper"

class EligableDaysPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eligable_days_part = eligable_days_parts(:one)
  end

  test "should get index" do
    get eligable_days_parts_index_url
    assert_response :success
  end

  test "should get new" do
    get new_eligable_days_part_url
    assert_response :success
  end

  test "should create eligable_days_part" do
    assert_difference("EligableDaysParts.count") do
      post eligable_days_parts_index_url, params: { eligable_days_part: { days_per_week: @eligable_days_part.days_per_week, public_holidays: @eligable_days_part.public_holidays, sick_days: @eligable_days_part.sick_days, unpaid_leave: @eligable_days_part.unpaid_leave, year: @eligable_days_part.year } }
    end

    assert_redirected_to eligable_days_part_url(EligableDaysParts.last)
  end

  test "should show eligable_days_part" do
    get eligable_days_part_url(@eligable_days_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_eligable_days_part_url(@eligable_days_part)
    assert_response :success
  end

  test "should update eligable_days_part" do
    patch eligable_days_part_url(@eligable_days_part), params: { eligable_days_part: { days_per_week: @eligable_days_part.days_per_week, public_holidays: @eligable_days_part.public_holidays, sick_days: @eligable_days_part.sick_days, unpaid_leave: @eligable_days_part.unpaid_leave, year: @eligable_days_part.year } }
    assert_redirected_to eligable_days_part_url(@eligable_days_part)
  end

  test "should destroy eligable_days_part" do
    assert_difference("EligableDaysParts.count", -1) do
      delete eligable_days_part_url(@eligable_days_part)
    end

    assert_redirected_to eligable_days_parts_index_url
  end
end
