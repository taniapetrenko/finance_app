class ReportsController < ApplicationController
  def index
  end

  def report
    if params['commit'] == 'По датам'
      redirect_to(
        {
          action: 'report_by_dates',
          start_date: params[:start_date],
          end_date: params[:end_date],
          operation_type: params[:operation_type]
        }
      )
    else
      redirect_to(
        {
          action: 'report_by_category',
          start_date: params[:start_date],
          end_date: params[:end_date],
          operation_type: params[:operation_type],
          category_id: params[:category_id]
        }
      )
    end
  end

  def report_by_category
    @operations = Operation.by_report(
      params[:start_date],
      params[:end_date],
      params[:category_id],
      params[:operation_type]
    )
  end

  def report_by_dates
    @operations = Operation.by_date(
                              params[:start_date],
                              params[:end_date])
                           .by_operation_type(params[:operation_type])
                           .joins(:category)
                           .group('categories.name')
                           .sum(:amount)
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @operation_type = params[:operation_type].capitalize
  end
end
