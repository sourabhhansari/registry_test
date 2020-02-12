# frozen_string_literal: true

# app/models/enrollment.rb
class Enrollment < ApplicationRecord
  belongs_to :registry
  belongs_to :coordinator
  belongs_to :participant

  validates :participant_id,
            uniqueness: { scope: :registry_id,
                          message: 'Cannot be enrolled on a same registry more than once'}
end
