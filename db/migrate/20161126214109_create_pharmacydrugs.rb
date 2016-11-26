class CreatePharmacydrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :pharmacydrugs do |t|
      t.integer :drug_id
      t.integer :pharmacy_id

      t.timestamps
    end

    add_index :pharmacydrugs, [:drug_id, :pharmacy_id]
  end
end
