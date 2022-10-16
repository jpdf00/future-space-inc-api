class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.integer :launch_library_id
      t.string :name
      t.text :description
      t.string :launch_designator
      t.string :type
      t.references :orbit, null: true, foreign_key: true, index: true

      t.timestamps
    end
  end
end
