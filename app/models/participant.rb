# frozen_string_literal: true

# app/models/participant.rb
class Participant < ApplicationRecord
  has_many :enrollments
  has_many :registries, through: :enrollments
  has_many :coordinators, through: :enrollments

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |result|
        csv << result.attributes.values_at(*column_names)
      end
    end
  end
end
