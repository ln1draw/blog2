class AddsExcerpt < ActiveRecord::Migration
  def change
    add_column :posts, :excerpt, :string
  end
end
