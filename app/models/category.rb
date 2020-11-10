class Category < ApplicationRecord
  has_many :staples, dependent: :destroy
  has_many :my_staples, :through => :staples
  validates :name, presence: true
end
