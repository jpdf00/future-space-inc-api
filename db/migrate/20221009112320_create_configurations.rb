class CreateConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :configurations, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.integer :launch_library_id
      t.string :url
      t.string :name
      t.string :family
      t.string :full_name
      t.string :variant

      t.timestamps
    end
  end
end
