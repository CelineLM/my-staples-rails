class NonStaple < ApplicationRecord
  belongs_to :grocery_list
  validates :name, :grocery_list, presence: true
end
