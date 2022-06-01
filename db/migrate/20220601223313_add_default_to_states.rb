class AddDefaultToStates < ActiveRecord::Migration[7.0]
  def change
    add_column :states, :default, :boolean, defualt: false
  end
end
