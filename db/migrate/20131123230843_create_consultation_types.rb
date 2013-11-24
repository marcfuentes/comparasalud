class CreateConsultationTypes < ActiveRecord::Migration
  def change
    create_table :consultation_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
