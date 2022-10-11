class CreateLaunchers < ActiveRecord::Migration[7.0]
  def change
    create_table :launchers, id: false do |t|
      t.uuid :id, index: true, unique: true, primary_key: true
      t.string :url
      t.integer :launch_library_id
      t.string :slug
      t.string :name
      t.string :net
      t.string :window_end
      t.string :window_start
      t.boolean :inhold
      t.boolean :tbdtime
      t.boolean :tbddate
      t.integer :probability
      t.string :holdreason
      t.string :failreason
      t.string :hashtag
      t.boolean :webcast_live
      t.string :image
      t.string :infographic
      t.timestamp :imported_t
      t.integer :publishing_status, default: 0
      t.boolean :manual_update, default: false
      t.references :status, null: false, foreign_key: true, index: true
      t.references :launch_service_provider, null: false, foreign_key: true, index: true
      t.references :rocket, null: false, foreign_key: true, index: true
      t.references :mission, null: false, foreign_key: true, index: true
      t.references :pad, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
