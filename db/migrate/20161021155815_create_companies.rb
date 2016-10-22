class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_type
      t.text :description
      t.string :city
      t.string :state
      t.string :website

      t.timestamps
    end
  end
end
