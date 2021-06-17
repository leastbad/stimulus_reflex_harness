class CommentsReflex < ApplicationReflex
  def add
    Post.find(params[:id]).comments.create(body: params[:body])
  end
end