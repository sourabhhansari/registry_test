# frozen_string_literal: true

(1..5).each do |i|
  Registry.find_or_create_by!(name: "test registry #{i}",
                              location: 'india', state: 0)
  Coordinator.find_or_create_by!(email: "test#{i}@yopmail.com",
                                 name: "coordinator #{i}",
                                 phone_number: '9876543215')
  Participant.find_or_create_by!(name: "participant #{i}",
                                 gender: 'male',
                                 date_of_birth: '1964/09/09',
                                 registry: Registry.first)
end
(6..10).each do |i|
  Registry.find_or_create_by!(name: "test registry #{i}",
                              location: 'denver', state: 1)
end
