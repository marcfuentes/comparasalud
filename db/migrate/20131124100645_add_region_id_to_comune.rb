class AddRegionIdToComune < ActiveRecord::Migration
  def change
    add_column :comunes, :region_id, :integer
  end
end
