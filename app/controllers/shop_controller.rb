class ShopController < ApplicationController

  def index
    @items = current_user.items
    @user = current_user
  end
end


def Buy
  puts "hello"

end



def create
  @comment = Comment.create(comment_params)

  respond_to do |format|
    format.html { redirect_to @post }
    format.turbo_stream do
      render turbo_stream: turbo_stream.append("comments", partial: "comments/comment", locals: { comment: @comment })
    end
  end
 end



