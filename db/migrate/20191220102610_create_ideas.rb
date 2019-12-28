class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string     :title
      t.text       :content,  null: false
      t.string     :category, null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
