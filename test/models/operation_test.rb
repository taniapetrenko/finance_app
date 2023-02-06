require "test_helper"

class OperationTest < ActiveSupport::TestCase
  test 'check reports_by_dates with category product' do
    assert_equal(
      { operations(:one).odate => 500, operations(:two).odate => 345 },
      Operation.by_date(
                   '2023-01-01 20:26:12',
                   '2023-01-02 20:26:12')
               .by_operation_type('витрата')
               .by_category(categories(:product).id)
               .group(:odate)
               .sum(:amount)
    )
  end

  test 'check reports_by_dates with category salary' do
    assert_equal(
      { operations(:nine).odate => 7000, operations(:ten).odate => 15000 },
      Operation.by_date(
                   '2023-01-10 20:26:12',
                   '2023-01-11 20:26:12')
               .by_operation_type('дохід')
               .by_category(categories(:salary).id)
               .group(:odate)
               .sum(:amount)
    )
  end

  test 'check reports_by_categories with operation_type витрата' do
    assert_equal(
      {
        'Appliances' => 5099, 'Clothes' => 1689, 'Coffee' => 120, 'Construction costs' => 8500,
        'Product' => 845, 'Relaxation' => 940, 'Self development' => 7250, 'Sport' => 15099,
        'Travel' => 4300
      },
      Operation.by_date(
                   '2023-01-01 20:26:12',
                   '2023-02-05 20:26:12')
               .by_operation_type('витрата')
               .joins(:category)
               .group('categories.name')
               .sum(:amount)
    )
  end

  test 'check reports_by_categories with operation_type дохід' do
    assert_equal(
      {
        'Salary' => 22000
      },
      Operation.by_date(
                   '2023-01-10 20:26:12',
                   '2023-01-11 20:26:12')
               .by_operation_type('дохід')
               .joins(:category)
               .group('categories.name')
               .sum(:amount)
    )
  end
end
