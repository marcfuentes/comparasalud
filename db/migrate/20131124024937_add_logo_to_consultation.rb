class AddLogoToConsultation < ActiveRecord::Migration
  def change
    add_column :consultations, :logo, :string
  end
end
