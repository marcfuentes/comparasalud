class AddConsultationIdToConsultationTypes < ActiveRecord::Migration
  def change
    add_column :consultation_types, :consultation_id, :integer
  end
end
