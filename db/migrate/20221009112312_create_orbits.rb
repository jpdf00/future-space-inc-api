class CreateOrbits < ActiveRecord::Migration[7.0]
  def change
    create_table :orbits, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.string :name
      t.string :abbrev

      t.timestamps
    end
  end
end
