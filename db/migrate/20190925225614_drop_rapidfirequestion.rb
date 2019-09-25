class DropRapidfirequestion < ActiveRecord::Migration[5.2]
  def change
    drop_table :rapidfire_questions
  end
end
