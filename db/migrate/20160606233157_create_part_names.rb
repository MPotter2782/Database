class CreatePartNames < ActiveRecord::Migration
  def change
    create_table :part_names do |t|
      t.string :name
      t.integer :part_types_id

      t.timestamps null: false
    end
  end
end
