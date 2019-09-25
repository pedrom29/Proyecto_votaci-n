class DropRapidfireattemp < ActiveRecord::Migration[5.2]
  def change
    drop_table :rapidfire_attempts
  end
end
