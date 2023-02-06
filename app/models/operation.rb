class Operation < ApplicationRecord
  enum operation_type: {
    витрата: 0, дохід: 1
  }
  belongs_to :category

  validates :amount, presence: true,
                     numericality: { only_integer: true, greater_than: 0 }
  validates :odate, :description, presence: true

  scope :by_date, ->(start_date, end_date) { where(odate: start_date..end_date) }
  scope :by_operation_type, ->(operation_type) { where(operation_type: operation_type) }
  scope :by_category, ->(category_id) { where(category_id: category_id) }
end
