class AddPartNumberToEgCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :eg_companies, :part_number, :string
  end
end
