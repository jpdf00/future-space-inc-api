class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses, id: false do |t|
      t.integer :id, index: true, unique: true, primary_key: true
      t.string :name

      t.timestamps
    end
  end
end
