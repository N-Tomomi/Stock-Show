class Gift < ApplicationRecord
  validates :gift_name, presence: true
  belongs_to :stock
end
