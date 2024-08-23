class ShopsController < ApplicationController

  def index
    @items = current_user.items
    @user = current_user
  end



  def choice
    @user = current_user
    # Logique pour générer le contenu de la pop-up
    @item = Item.find(params[:item_id])

    @content = "Contenu initial de CHOICE/USE IT"
    # Renvoie un partial qui sera chargé dans le turbo-frame
    render "shops/_popup_shop", locals: { content: @content }
  end

  # def update_content
  #   @new_content = "Nouveau contenu après interaction"
  #   render "shop/_popup", locals: { content: @new_content }
  # end



  def buy
    @user = current_user

    if @user.gold_count >= 400
      @user.gold_count = @user.gold_count - 400


      @items = Item.all
    # proba
      total_probability = @items.sum(&:probability)
      cumulative_probabilities = @items.each_with_object([]) do |item, array|
        previous_probability = array.last || 0
        array << previous_probability + item.probability
      end


      random_number = rand(0.0...total_probability)
      selected_item = nil
      cumulative_probabilities.each_with_index do |cumulative_probability, index|
        if random_number < cumulative_probability
          selected_item = @items[index]
          break
        end
      end

      # mettre dans inventory
      Inventory.create(user: @user, item: selected_item)
      # renvoyer l'item
      @item = selected_item
    else
      puts "Sorry you need more money"
    end




    # Logique pour générer le contenu de la pop-up
    @content = "Contenu initial de BUY / LAUNCH"
    # <%= image_tag "wheel.png", alt: "wheel"  %>
    # Renvoie un partial qui sera chargé dans le turbo-frame
    render 'shops/_popup_shop'
    # render turbo_stream: turbo_stream.append(:popup_shop, partial: 'shops/popup_shop', locals: { content: @content } )
  end


  # def update_content
  #   @new_content = "Nouveau contenu après interaction"
  #   render "shops/_popup_choice", locals: { content: @new_content }
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
