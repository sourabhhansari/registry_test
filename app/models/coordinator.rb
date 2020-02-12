# frozen_string_literal: true

# app/models/coordinator.rb
class Coordinator < ApplicationRecord
  has_many :enrollments
  has_many :registries, through: :enrollments
  has_many :participants, through: :enrollments
end
