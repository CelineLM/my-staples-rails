class User < ApplicationRecord
  belongs_to :group
  after_initialize :set_defaults

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  private

  def set_defaults
    self.group_admin = false
    self.group_id = nil
  end
end
