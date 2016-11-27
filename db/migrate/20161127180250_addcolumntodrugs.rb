class Addcolumntodrugs < ActiveRecord::Migration[5.0]
  def change
    add_column :drugs, :manufacturer, :string
    add_column :drugs, :forma, :string
  end
end
