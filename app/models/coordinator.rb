class Coordinator < ApplicationRecord
  has_many :enrollment
  has_many :registries, through: :enrollment
end
