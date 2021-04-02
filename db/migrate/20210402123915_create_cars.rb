class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :type
      t.integer :year
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
