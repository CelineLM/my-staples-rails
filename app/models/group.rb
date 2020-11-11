class Group < ApplicationRecord
  has_many :users
  has_one :grocery_list, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
