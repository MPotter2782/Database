class CreatePartKinds < ActiveRecord::Migration
  def change
    create_table :part_kinds do |t|
      t.string :kind

      t.timestamps null: false
    end
  end
end
