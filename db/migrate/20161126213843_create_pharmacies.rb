class CreatePharmacies < ActiveRecord::Migration[5.0]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
