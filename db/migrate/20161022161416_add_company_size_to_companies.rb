class AddCompanySizeToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :company_size, :string
  end
end
