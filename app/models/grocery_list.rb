class GroceryList < ApplicationRecord
  belongs_to :group
  validates :name, :group, presence: true
end
