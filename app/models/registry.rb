# frozen_string_literal: true

# app/models/registry.rb
class Registry < ApplicationRecord
  has_many :enrollments
  has_many :coordinators, through: :enrollments
  has_many :participants, through: :enrollments

  enum state: %i[open closed]
  STATUS = %w[open closed].freeze
end
