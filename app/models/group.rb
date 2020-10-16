class Group < ApplicationRecord
  has_many :users
  has_many :grocery_lists, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
