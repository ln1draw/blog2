class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      t.date :date

      t.timestamps
    end
  end
end
