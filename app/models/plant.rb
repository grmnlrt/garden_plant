class Plant < ApplicationRecord
  belongs_to :garden
  validates :name, presence: true, uniqueness: true
  validates :img_url, presence: true
  has_many :plant_tags
  has_many :tags, through: :plant_tags
end
