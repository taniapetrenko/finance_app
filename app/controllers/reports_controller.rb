class ReportsController < ApplicationController
  def index
  end

  def report
    if params['commit'] == 'По датам'
      redirect_to(
        {
          action: 'report_by_dates',
          start_date: Date.new(params['start_date(1i)'].to_i, params['start_date(2i)'].to_i, params['start_date(3i)'].to_i),
          end_date: Date.new(params['end_date(1i)'].to_i, params['end_date(2i)'].to_i, params['end_date(3i)'].to_i)
        }
      )
    else
      redirect_to(
        {
          action: 'report_by_category',
          category: params[:category]
        }
      )
    end
  end

  def report_by_category
    @operations = Operation.by_category(params['category'])
  end

  def report_by_dates
    @operations = Operation.by_date(
      params[:start_date], params[:end_date]
    )
  end
end
