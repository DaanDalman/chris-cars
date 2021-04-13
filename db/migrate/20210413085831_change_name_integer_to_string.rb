class ChangeNameIntegerToString < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :name, :string
  end
end
