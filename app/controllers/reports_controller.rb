class ReportsController < ApplicationController
  def index
  end

  def report
    operations = Operation.by_report(
      params[:start_date],
      params[:end_date],
      params[:category_id],
      params[:operation_type]
    )
    if params['commit'] == 'По датам'
      redirect_to(
        {
          action: 'report_by_dates',
          operations: operations
        }
      )
    else
      redirect_to(
        {
          action: 'report_by_category',
          operations: operations
        }
      )
    end
  end

  def report_by_category
    @operations = params[:operations]
  end

  def report_by_dates
    @operations = params[:operations]
  end
end
