class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.string :full_string
      t.string :longest_sub
      t.integer :longest_sub_length
      t.integer :user_id
      t.index :user_id, unique: true
      t.timestamps
    end
  end
end
