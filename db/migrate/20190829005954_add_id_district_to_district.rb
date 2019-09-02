class AddIdDistrictToDistrict < ActiveRecord::Migration[5.2]
  def change
    add_column :districts, :id_district, :integer
  end
end
