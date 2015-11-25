class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :sex, null: false, limit: 1

      t.timestamps null: false
    end
  end
end
