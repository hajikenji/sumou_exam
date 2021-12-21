class House < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true
  validates :remarks, presence: true
  validates :residence, presence: true
  validates :built, presence: true
end
