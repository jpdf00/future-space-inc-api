class AddProgramToLaunchers < ActiveRecord::Migration[7.0]
  def change
    add_column :launchers, :program, :text, array:true, default:[]
  end
end
