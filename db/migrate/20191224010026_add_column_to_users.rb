class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name,   :string,  null: false
    add_column :users, :avatar, :integer, null: false, default: 0
    add_column :users, :point,  :integer, null: false, default: 0
  end
end
