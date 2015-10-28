class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.text :flag_image
      t.integer :size
      t.integer :gdp
      t.integer :population
      t.string :language
      t.string :currency
      t.integer :literacy_rate
      t.string :governing_party

      t.timestamps null: false
    end
  end
end
