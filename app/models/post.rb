class Post < ApplicationRecord
  def to_partial_path
    "home/post"
  end
end
