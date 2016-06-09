class CreatePartNames < ActiveRecord::Migration
  def change
    create_table :part_names do |t|
      t.string :name
      t.integer :quantity
      t.references :part_kind, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
