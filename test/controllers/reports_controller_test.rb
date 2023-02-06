require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get report_by_category" do
    get reports_report_by_category_url, params: {
      start_date: '2023-01-01 20:26:12', end_date: '2023-01-02 20:26:12',
      operation_type: 'витрата'
    }
    assert_response :success
  end

  test "should get report_by_dates" do
    get reports_report_by_dates_url, params: {
      start_date: '2023-01-01 20:26:12', end_date: '2023-01-02 20:26:12',
      operation_type: 'витрата', category_id: categories(:product).id
    }
    assert_response :success
  end
end
