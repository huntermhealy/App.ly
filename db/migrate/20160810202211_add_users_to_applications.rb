class AddUsersToApplications < ActiveRecord::Migration[5.0]
  def self.up
  	change_table :applications do |t|
  		t.references :user, index: true, foreign_key: true
  	end
  end

  def self.down
  	remove_column :applications, :user
  end
end
