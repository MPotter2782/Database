class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.integer :quantity
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
