class House < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true
  validates :remarks, presence: true
  validates :residence, presence: true
  validates :built, presence: true
  has_many :near_stations, dependent: :destroy
  accepts_nested_attributes_for :near_stations
end
