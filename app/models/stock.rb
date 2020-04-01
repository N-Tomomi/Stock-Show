class Stock < ApplicationRecord
  validates :stock_code, presence: true, length: { mimimum:4, maximum: 4, message: '4 digits!' }
  validates :name, presence: true

  has_many :gifts, dependent: :destroy
  has_many :dividends, dependent: :destroy
end
