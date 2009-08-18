class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      t.integer :participant_id
      t.integer :event_id
      t.integer :event_status, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
