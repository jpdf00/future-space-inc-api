class CreateRockets < ActiveRecord::Migration[7.0]
  def change
    create_table :rockets, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.references :configuration, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
