class AddComuneIdToConsultation < ActiveRecord::Migration
  def change
    add_column :consultations, :comune_id, :integer
  end
end
