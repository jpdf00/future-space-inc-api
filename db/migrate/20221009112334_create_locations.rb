class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.string :url
      t.string :name
      t.string :country_code
      t.string :map_image
      t.integer :total_launch_count
      t.integer :total_landing_count

      t.timestamps
    end
  end
end
