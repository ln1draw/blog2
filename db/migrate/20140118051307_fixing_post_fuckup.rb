class FixingPostFuckup < ActiveRecord::Migration
  def change
    remove_column :posts, :post_id, :integer
    add_column :posts, :user_id, :integer
  end
end
