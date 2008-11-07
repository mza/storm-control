class CreateCruiseControls < ActiveRecord::Migration
  def self.up
    create_table :cruise_controls do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :cruise_controls
  end
end
