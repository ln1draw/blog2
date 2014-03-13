class Post < ActiveRecord::Base
  belongs_to :user

  def self.sort
    Post.all.sort_by
  end

  def self.feed(page)
    if page.nil?
      start_point = 1
    else
      start_point = page.to_i
    end

    x = 10 * (start_point - 1)
    y = x + 10

    return Post.all.reverse[x..y]
  end
end
