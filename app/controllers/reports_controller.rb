class ReportsController < ApplicationController
  def index
  end

  def report_by_category
    @operations = Operation.by_category(params['category'])
  end

  def report_by_dates
    @operations = Operation.by_date(
      Date.new(params['start_date(1i)'].to_i, params['start_date(2i)'].to_i, params['start_date(3i)'].to_i),
      Date.new(params['end_date(1i)'].to_i, params['end_date(2i)'].to_i, params['end_date(3i)'].to_i)
    )
  end
end
