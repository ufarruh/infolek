class CreateDrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :drugs, :title
  end
end
