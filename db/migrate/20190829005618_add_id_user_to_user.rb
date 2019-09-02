class AddIdUserToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :id_user, :integer
  end
end
