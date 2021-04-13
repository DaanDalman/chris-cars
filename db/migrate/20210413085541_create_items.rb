class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
