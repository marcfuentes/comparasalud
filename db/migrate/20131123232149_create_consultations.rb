class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :provider
      t.integer :total_price
      t.integer :pay_price
      t.boolean :bond
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
