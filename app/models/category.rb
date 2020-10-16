class Category < ApplicationRecord
  has_many :staples, dependent: :destroy
  validates :name, presence: true
end
