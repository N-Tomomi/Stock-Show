class Dividend < ApplicationRecord
  validates :dividend, presence: true
  validates :stock_num, presence: true

  belongs_to :stock
end
