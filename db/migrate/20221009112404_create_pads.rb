class CreatePads < ActiveRecord::Migration[7.0]
  def change
    create_table :pads, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.string :url
      t.integer :agency_id
      t.string :name
      t.string :info_url
      t.string :wiki_url
      t.string :map_url
      t.string :latitude
      t.string :longitude
      t.string :map_image
      t.integer :total_launch_count
      t.references :location, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
