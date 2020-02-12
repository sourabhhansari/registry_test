class RemoveRegistryIdFromParticipants < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :participants, :registry
  end
end
