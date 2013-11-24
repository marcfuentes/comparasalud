class AddConsultationTypeIdToConsultation < ActiveRecord::Migration
  def change
    add_column :consultations, :consultation_type_id, :integer
  end
end
