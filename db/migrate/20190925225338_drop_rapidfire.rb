class DropRapidfire < ActiveRecord::Migration[5.2]
  def change
    drop_table :rapidfire_surveys
  end
end
