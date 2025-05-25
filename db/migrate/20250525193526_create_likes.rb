class CreateLikes < ActiveRecord::Migration[8.0]
  def change
    create_table :likes do |t|
      t.references :fan, null: false, foreign_key: { to_table: :users }
      t.string :photo
      t.string :references

      t.timestamps
    end
  end
end
