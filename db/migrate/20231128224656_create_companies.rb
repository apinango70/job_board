class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.date :founded
      t.integer :team_size
      t.string :website
      t.string :location
      t.text :about

      t.timestamps
    end
  end
end
