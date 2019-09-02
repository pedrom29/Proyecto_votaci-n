class AddIdParliamentaryToParliamentary < ActiveRecord::Migration[5.2]
  def change
    add_column :parliamentaries, :id_parliamentary, :integer
  end
end
