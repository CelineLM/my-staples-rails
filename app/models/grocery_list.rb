class GroceryList < ApplicationRecord
  belongs_to :group
  has_many :non_staples, dependent: :destroy
  has_many :my_staples, dependent: :destroy
  validates :name, :group, presence: true
end