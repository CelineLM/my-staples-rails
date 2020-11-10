class Staple < ApplicationRecord
  belongs_to :category
  has_many :my_staples
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
end
