class AddPartNumberToEgComponent < ActiveRecord::Migration[6.0]
  def change
    add_column :eg_components, :part_number, :string
  end
end
