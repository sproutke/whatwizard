class Step < ActiveRecord::Base
  has_many :progress
  has_many :questions
  has_many :contacts, through: :progress

  validates :order_index, uniqueness: true
end
