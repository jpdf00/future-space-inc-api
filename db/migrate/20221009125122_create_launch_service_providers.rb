class CreateLaunchServiceProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :launch_service_providers, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.string :url
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
