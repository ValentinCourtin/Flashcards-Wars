class ShopController < ApplicationController

  def index
    @items = current_user.items
    @user = current_user
  end



  def buy
    @user = current_user

    puts "hello"
    # Logique pour générer le contenu de la pop-up
    @content = "Contenu initial de la pop-up"
    # Renvoie un partial qui sera chargé dans le turbo-frame
    render "shop/_popup", locals: { content: @content }
  end

  
  def update_content
    @new_content = "Nouveau contenu après interaction"
    render "shop/_popup", locals: { content: @new_content }
  end




  def choice
    @user = current_user

    puts "hello"
    # Logique pour générer le contenu de la pop-up
    @content = "Contenu initial de la pop-up"
    # Renvoie un partial qui sera chargé dans le turbo-frame
    render "shop/_popup", locals: { content: @content }
  end

  # def update_content
  #   @new_content = "Nouveau contenu après interaction"
  #   render "shop/_popup", locals: { content: @new_content }
  # end



end







# def create
#   @comment = Comment.create(comment_params)

#   respond_to do |format|
#     format.html { redirect_to @post }
#     format.turbo_stream do
#       render turbo_stream: turbo_stream.append("comments", partial: "comments/comment", locals: { comment: @comment })
#     end
#   end
#  end



#  render partial: "popups/content", locals: { content: @content }
