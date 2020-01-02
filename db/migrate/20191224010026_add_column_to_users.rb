class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name,   :string,  null: false, limit: 10, unique: true
    add_column :users, :avatar, :integer, null: false, default: 0
  end
end
