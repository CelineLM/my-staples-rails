class MyStaple < ApplicationRecord
  belongs_to :staple
  belongs_to :quantity
  belongs_to :grocery_list
end
