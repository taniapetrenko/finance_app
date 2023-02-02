class Operation < ApplicationRecord
  enum operation_type: {
    витрата: 0, дохід: 1
  }
  belongs_to :category

  validates :amount, presence: true,
                     numericality: { only_integer: true, greater_than: 0 }
  validates :odate, :description, presence: true

  scope :by_report, lambda do |start_date, end_date, category_id, operation_type|
    where(odate: start_date..end_date, category_id: category_id, operation_type: operation_type)
  end
end
