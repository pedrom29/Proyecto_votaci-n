class CreateParliamentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :parliamentaries do |t|
      t.string :name
      t.string :political_party
      t.date :birthdate
      t.references :district, foreign_key: true

      t.timestamps
    end
  end
end
