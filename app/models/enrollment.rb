# frozen_string_literal: true

class Enrollment < ApplicationRecord
  belongs_to :registry
  belongs_to :coordinator
  belongs_to :participant
end
