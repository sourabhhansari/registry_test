# frozen_string_literal: true

# app/models/registry.rb
class Registry < ApplicationRecord
  has_many :enrollment
  has_many :coordinators, through: :enrollment
  has_many :participants, through: :enrollment

  enum state: %i[open closed]
  STATUS = %w[open closed].freeze
end
