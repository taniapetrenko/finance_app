class Operation < ApplicationRecord
  belongs_to :category

  validates :amount, presence: true,
                     numericality: { only_integer: true, greater_than: 0 }
  validates :odate, :description, presence: true

  scope :by_date, ->(start_date, end_date) { where(odate: start_date..end_date) }
  scope :by_category, ->(id) { where(category_id: id) }
end
