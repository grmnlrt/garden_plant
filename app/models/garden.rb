class Garden < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :plants, dependent: :destroy
end
