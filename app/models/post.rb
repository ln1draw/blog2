class Post < ActiveRecord::Base
  belongs_to :user

  def self.sort
    Post.all.sort_by
  end
end
